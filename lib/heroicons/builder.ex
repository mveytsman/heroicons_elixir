defmodule Heroicons.Builder do
  @moduledoc """
  Documentation for `Heroicons.Builder`.
  """

  require Logger

  @heroicons_repository Application.compile_env(
                          :heroicons,
                          :heroicons_repository,
                          "tailwindlabs/heroicons"
                        )
  @heroicons_version Application.compile_env(:heroicons, :heroicons_version, :latest)
  @allowed_types Application.compile_env(:heroicons, :allowed_types, ["solid", "outline"])

  defmacro __using__(_) do
    Module.put_attribute(__CALLER__.module, :before_compile, __MODULE__)
    Module.register_attribute(__CALLER__.module, :icons, accumulate: true)
  end

  defmacro __before_compile__(_env) do
    Application.ensure_all_started(:inets)
    Application.ensure_all_started(:ssl)

    %{"tag_name" => tag_name, "tarball_url" => tarball_url} =
      get_release_data!(@heroicons_version)

    Logger.info("Building Heroicons library #{tag_name}")

    tarball_url
    |> get_url!()
    |> process_archive(__CALLER__.module)
  end

  defp get_release_data!(release_tag) do
    release =
      if release_tag == :latest do
        "latest"
      else
        "tags/#{release_tag}"
      end

    ["https://api.github.com", "repos", @heroicons_repository, "releases", release]
    |> Path.join()
    |> get_url!()
    |> Phoenix.json_library().decode!()
  end

  defp process_archive(binary, module) do
    with {:ok, files} <- :erl_tar.extract({:binary, binary}, [:memory, :compressed]) do
      Task.async_stream(
        files,
        fn {filename, content} ->
          case extract_icon_attributes(filename) do
            nil -> nil
            props -> build_icon_def(props, content, module)
          end
        end,
        ordered: false
      )
      |> Enum.reject(&is_nil/1)
    end
  end

  defp build_icon_def({type, icon_name}, content, module) do
    Module.put_attribute(module, :icons, icon_name)

    paths = extract_icon_paths(content)

    fn_count =
      module
      |> Module.get_attribute(:icons)
      |> Enum.count(&(&1 == icon_name))

    is_first_def? = fn_count == 1
    is_last_def? = fn_count == 3

    # we have to render default fn to a module attribute and inject it after last specific clause
    if type == :outline do
      outline_ast = get_icon_def(icon_name, type, paths, Macro.escape(%{}))
      Module.put_attribute(module, icon_name, outline_ast)
    end

    variant = get_icon_def(icon_name, type, paths, Macro.escape(%{type => true}))
    decorator = if is_first_def?, do: get_icon_docs(icon_name)
    default = if is_last_def?, do: Module.get_attribute(module, icon_name)

    Enum.reject([decorator, variant, default], &is_nil/1)
  end

  def get_icon_docs(icon_name) do
    quote do
      @doc """
      Renders the `#{unquote(icon_name)}` icon.

      By default, the outlined (24x24) component is used, but the `solid` or `mini`
      attributes can be provided for alternative styles.

      You may also pass arbitrary HTML attributes to be applied to the svg tag.

      ## Examples

      ```heex
      <Heroicons.#{unquote(icon_name)} />
      <Heroicons.#{unquote(icon_name)} class="w-4 h-4" />
      <Heroicons.#{unquote(icon_name)} solid />
      <Heroicons.#{unquote(icon_name)} mini />
      <Heroicons.#{unquote(icon_name)} outline />
      ```
      """
      attr :rest, :global,
        doc: "the arbitrary HTML attributes for the svg container",
        include: ~w(fill stroke stroke-width)

      attr :outline, :boolean, default: false
      attr :solid, :boolean, default: false
      attr :mini, :boolean, default: false
    end
  end

  defp get_icon_def(icon_name, type, paths, assigns_pattern) do
    import Kernel, except: [def: 2]
    import Phoenix.Component.Declarative, only: [def: 2]

    quote do
      def unquote(icon_name)(unquote(assigns_pattern) = assigns) do
        assigns
        # replace *type* => true with type: *type* for simpler matching
        |> Map.drop([unquote(type)])
        |> assign(type: unquote(type), paths: unquote(paths))
        |> svg()
      end
    end
  end

  defp extract_icon_attributes(filename) when is_list(filename) do
    case Regex.scan(~r/\/([^\/.]+)/, to_string(filename), capture: :all_but_first) do
      [["optimized"], ["20"], _, [name]] ->
        icon_name = name |> String.replace("-", "_") |> String.to_atom()
        {:mini, icon_name}

      [["optimized"], _, [type], [name]] when type in @allowed_types ->
        icon_name = name |> String.replace("-", "_") |> String.to_atom()
        {String.to_atom(type), icon_name}

      _ ->
        nil
    end
  end

  defp extract_icon_attributes(_), do: nil

  defp extract_icon_paths(content) when is_binary(content) do
    for path <- String.split(content, "\n"),
        path = String.trim(path),
        String.starts_with?(path, "<path"),
        do: path
  end

  defp get_url!(url, retry \\ 0) do
    if proxy = System.get_env("HTTP_PROXY") || System.get_env("http_proxy") do
      Logger.debug("Using HTTP_PROXY: #{proxy}")
      %{host: host, port: port} = URI.parse(proxy)
      :httpc.set_options([{:proxy, {{String.to_charlist(host), port}, []}}])
    end

    # https://erlef.github.io/security-wg/secure_coding_and_deployment_hardening/inets
    cacertfile = CAStore.file_path() |> String.to_charlist()

    request = {url, [{'User-Agent', 'Elixir'}]}

    http_options = [
      timeout: 5_000,
      ssl: [
        verify: :verify_peer,
        cacertfile: cacertfile,
        depth: 2,
        customize_hostname_check: [
          match_fun: :public_key.pkix_verify_hostname_match_fun(:https)
        ],
        versions: protocol_versions()
      ]
    ]

    case :httpc.request(:get, request, http_options, body_format: :binary) do
      {:ok, {{_, 200, 'OK'}, _headers, body}} ->
        body

      {:error, {:failed_connect, [_, {_, _, :timeout}]}} when retry < 3 ->
        get_url!(url, retry + 1)

      _ ->
        raise "Failed to get data from #{url}"
    end
  end

  defp protocol_versions do
    if otp_version() < 25, do: [:"tlsv1.2"], else: [:"tlsv1.2", :"tlsv1.3"]
  end

  defp otp_version, do: :erlang.system_info(:otp_release) |> List.to_integer()
end
