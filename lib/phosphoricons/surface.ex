if Code.ensure_loaded?(Surface) do
  defmodule Phosphoricons.Surface.Icon do
    @moduledoc """
    A Surface component for rendering Phosphoricons. Shameless copied from https://github.com/miguel-s/ex_heroicons
    ## Examples
        <Phosphoricons.Surface.Icon name="academic-cap" type="outline" class="h-4 w-4" />
    """
    use Surface.Component

    @doc "The name of the icon"
    prop(name, :string, required: true)

    @doc """
    The type of the icon
    Required if default type is not configured.
    """
    prop(type, :string)

    @doc "The class of the icon"
    prop(class, :css_class)

    @doc "All options are forwarded to the underlying SVG tag as HTML attributes"
    prop(opts, :keyword, default: [])

    @impl true
    def render(assigns) do
      type_opts = type_to_opts(assigns)
      class_opts = class_to_opts(assigns)

      opts =
        assigns.opts
        |> Keyword.merge(type_opts)
        |> Keyword.merge(class_opts)

      assigns = assign(assigns, opts: opts)

      ~F"""
      {Phosphoricons.icon(@name, @opts)}
      """
    end

    defp type_to_opts(assigns) do
      type = assigns[:type] || Phosphoricons.default_type()

      unless type do
        raise ArgumentError,
              "type prop is required if default type is not configured."
      end

      [type: type]
    end

    defp class_to_opts(assigns) do
      if assigns[:class] do
        [class: Surface.css_class(assigns.class)]
      else
        []
      end
    end
  end
end
