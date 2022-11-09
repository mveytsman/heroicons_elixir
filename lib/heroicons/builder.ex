defmodule Heroicons.Builder do
  @moduledoc """
  Documentation for `Heroicons.Builder`.
  """

  require Logger

  import SweetXml

  @heroicons_repository Application.compile_env(
                          :heroicons,
                          :heroicons_repository,
                          "tailwindlabs/heroicons"
                        )
  @heroicons_version Application.compile_env(:heroicons, :heroicons_version, :latest)
  @allowed_types Application.compile_env(:heroicons, :allowed_types, ["solid", "outline"])

  defmacro __using__(_) do
    quote do
      @before_compile Heroicons.Builder
    end
  end

  defmacro __before_compile__(_env) do
    Application.ensure_all_started(:hackney)

    %{"tag_name" => tag_name, "tarball_url" => tarball_url} = get_release_data(@heroicons_version)

    Logger.info("Building Heroicons library #{tag_name}")

    tarball_url
    |> simple_get_request!()
    |> process_archive()
  end

  defp get_release_data(release_tag) do
    release =
      if release_tag == :latest do
        "latest"
      else
        "tags/#{release_tag}"
      end

    ["https://api.github.com", "repos", @heroicons_repository, "releases", release]
    |> Path.join()
    |> simple_get_request!()
    |> Jason.decode!()
  end

  defp process_archive(binary) do
    with {:ok, files} <- :erl_tar.extract({:binary, binary}, [:memory, :compressed]) do
      for {filename, content} <- files,
          props = extract_icon_attributes(filename),
          !is_nil(props) do
        build_icon_def(props, content)
      end
    end
  end

  defp build_icon_def({type, fn_name}, content) do
    paths = extract_icon_paths(content)

    default =
      if type == :outline do
        quote do
          defguardp is_default_variant(assigns)
                    when not is_map_key(assigns, :solid) and not is_map_key(assigns, :mini)

          @doc """
          Renders the `#{unquote(fn_name)}` icon.

          By default, the outlined (24x24) component is used, but the `solid` or `mini`
          attributes can be provided for alternative styles.

          You may also pass arbitrary HTML attributes to be applied to the svg tag.

          ## Examples

          ```heex
          <Heroicons.#{unquote(fn_name)} />
          <Heroicons.#{unquote(fn_name)} class="w-4 h-4" />
          <Heroicons.#{unquote(fn_name)} solid />
          <Heroicons.#{unquote(fn_name)} mini />
          <Heroicons.#{unquote(fn_name)} outline />
          ```
          """
          attr :rest, :global,
            doc: "the arbitrary HTML attributes for the svg container",
            include: ~w(fill stroke stroke-width)

          attr :outline, :boolean, default: true
          attr :solid, :boolean, default: false
          attr :mini, :boolean, default: false

          def unquote(fn_name)(assigns) when is_default_variant(assigns) do
            svg(assign(assigns, type: unquote(type), paths: unquote(paths)))
          end
        end
      end

    quote do
      def unquote(fn_name)(%{unquote(type) => true} = assigns) do
        assigns
        # replace *type* => true with type: *type* for simpler matching
        |> Map.drop([unquote(type)])
        |> assign(type: unquote(type), paths: unquote(paths))
        |> svg()
      end

      unquote(default)
    end
  end

  defp extract_icon_attributes(filename) when is_list(filename) do
    case Regex.scan(~r/\/([^\/.]+)/, to_string(filename), capture: :all_but_first) do
      [["optimized"], ["20"], _, [name]] ->
        fn_name = name |> String.replace("-", "_") |> String.to_atom()
        {:mini, fn_name}

      [["optimized"], _, [type], [name]] when type in @allowed_types ->
        fn_name = name |> String.replace("-", "_") |> String.to_atom()
        {String.to_atom(type), fn_name}

      _ ->
        nil
    end
  end

  defp extract_icon_attributes(_), do: nil

  defp extract_icon_paths(content) when is_binary(content) do
    content
    |> xpath(~x"//svg/*"l)
    |> Enum.map_join("", fn node ->
      name = xmlElement(node, :name)

      attrs =
        node
        |> xmlElement(:attributes)
        |> Enum.map_join(" ", fn attr ->
          name = xmlAttribute(attr, :name)
          value = xmlAttribute(attr, :value)
          ~s|#{name}="#{value}"|
        end)

      ~s|<#{name} #{attrs}/>|
    end)
  end

  defp simple_get_request!(url, retry \\ 0) do
    with(
      {:ok, 200, _, client} <-
        :hackney.request(:get, url, [], "", follow_redirect: true, max_redirect: 3),
      {:ok, body} <- :hackney.body(client)
    ) do
      body
    else
      {:error, :timeout} when retry < 3 ->
        simple_get_request!(url, retry + 1)

      _ ->
        raise "Failed to get data from #{url}"
    end
  end
end
