defmodule Phosphoricons.IconGenerator do
  defmacro __using__(icon_dir: icon_dir, prefix: prefix) do
    icon_paths =
      Path.absname(icon_dir, :code.priv_dir(:phosphoricons))
      |> Path.join("*.svg")
      |> Path.wildcard()
      |> Enum.filter(fn path ->
        path
        |> String.split("/")
        |> List.last()
        |> String.starts_with?(prefix)
      end)

    for path <- icon_paths do
      generate(path)
    end
  end

  defp remove_appendix(str) do
    str
    |> String.replace_suffix("_thin", "")
    |> String.replace_suffix("_light", "")
    |> String.replace_suffix("_bold", "")
    |> String.replace_suffix("_fill", "")
    |> String.replace_suffix("_duotone", "")
  end

  @doc false
  def generate(path) do
    name =
      Path.basename(path, ".svg")
      |> String.replace("-", "_")
      |> remove_appendix()
      |> String.to_atom()

    # Read file and replace all strokes with currentColor
    icon =
      path
      |> File.read!()
      |> String.replace("stroke=\"#000\"", "stroke=\"currentColor\"")

    {i, _} = :binary.match(icon, ">")
    {head, body} = String.split_at(icon, i)

    doc = """
    ![](assets/#{Path.relative_to(path, :code.priv_dir(:phosphoricons))}) {: width=24px}

    ## Examples

    Use as a `Phoenix.Component`

        <.#{name} />

        <.#{name} class="h-6 w-6 text-gray-500" />

    or as a function

        <%= #{name}() %>

        <%= #{name}(class: "h-6 w-6 text-gray-500") %>
    """

    quote do
      @doc unquote(doc)
      def unquote(name)(assigns_or_opts \\ [])

      def unquote(name)(var!(assigns)) when is_map(var!(assigns)) do
        var!(attrs) = Phoenix.Component.assigns_to_attributes(var!(assigns))

        var!(assigns) = Phoenix.Component.assign(var!(assigns), :attrs, var!(attrs))

        unquote(
          EEx.compile_string(head <> "{@attrs}" <> body,
            caller: __MODULE__,
            source: __MODULE__,
            engine: Phoenix.LiveView.HTMLEngine,
            file: __ENV__.file,
            line: __ENV__.line + 1,
            module: __ENV__.module,
            indentation: 0
          )
        )
      end

      def unquote(name)(opts) when is_list(opts) do
        attrs =
          for {k, v} <- opts do
            safe_k =
              k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

            safe_v = v |> Phoenix.HTML.Safe.to_iodata()

            {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
          end

        {:safe, [unquote(head), Phoenix.HTML.Safe.to_iodata(attrs), unquote(body)]}
      end
    end
  end
end
