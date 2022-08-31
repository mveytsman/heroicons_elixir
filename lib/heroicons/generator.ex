defmodule Heroicons.Generator do
  alias Heroicons.SvgProcessor

  defmacro __using__(icon_dir: icon_dir, svg_opts: svg_opts) do
    icon_paths =
      Path.absname(icon_dir, :code.priv_dir(:heroicons))
      |> Path.join("*.svg")
      |> Path.wildcard()

    require Phoenix.Component

    if function_exported?(Phoenix.Component, :assigns_to_attributes, 2) do
      Module.put_attribute(__CALLER__.module, :assign_mod, Phoenix.Component)
      Module.put_attribute(__CALLER__.module, :assigns_to_attrs_mod, Phoenix.Component)
    else
      Module.put_attribute(__CALLER__.module, :assign_mod, Phoenix.LiveView)
      Module.put_attribute(__CALLER__.module, :assigns_to_attrs_mod, Phoenix.LiveView.Helpers)
    end

    for path <- icon_paths do
      generate(path, svg_opts)
    end
  end

  @doc false
  def generate(path, svg_opts) do
    name =
      Path.basename(path, ".svg")
      |> String.replace("-", "_")
      |> String.to_atom()

    icon =
      File.read!(path)
      |> SvgProcessor.process(svg_opts)

    <<"<svg", body::binary>> = icon
    head = "<svg "

    doc = """
    ![](assets/#{Path.relative_to(path, :code.priv_dir(:heroicons))}) {: width=24px}

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
        var!(attrs) = @assigns_to_attrs_mod.assigns_to_attributes(var!(assigns))
        var!(assigns) = @assign_mod.assign(var!(assigns), :attrs, var!(attrs))

        unquote(
          EEx.compile_string(head <> "{@attrs}" <> body,
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
