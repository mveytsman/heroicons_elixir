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
    Module.put_attribute(__CALLER__.module, :before_compile, __MODULE__)
    Module.register_attribute(__CALLER__.module, :icons, accumulate: true)
  end

  defmacro __before_compile__(_env) do
    Application.ensure_all_started(:hackney)

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
    |> Jason.decode!()
  end

  defp process_archive(binary, module) do
    with {:ok, files} <- :erl_tar.extract({:binary, binary}, [:memory, :compressed]) do
      for {filename, content} <- files,
          props = extract_icon_attributes(filename),
          !is_nil(props) do
        build_icon_def(props, content, module)
      end
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
    content
    |> xpath(~x"//svg/*"l)
    |> Enum.map(fn node ->
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

  defp get_url!(url, retry \\ 0) do
    with(
      {:ok, 200, _, client} <-
        :hackney.request(:get, url, [], "", follow_redirect: true, max_redirect: 3),
      {:ok, body} <- :hackney.body(client)
    ) do
      body
    else
      {:error, :timeout} when retry < 3 ->
        get_url!(url, retry + 1)

      _ ->
        raise "Failed to get data from #{url}"
    end
  end
end
