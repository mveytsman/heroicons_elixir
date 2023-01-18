if Code.ensure_loaded?(Phoenix.LiveView) do
  defmodule Phosphoricons.LiveView do
    @moduledoc """
    A LiveView component for rendering Phosphoricons. Shameless copied from https://github.com/miguel-s/ex_heroicons
    ## Examples
        <Phosphoricons.LiveView.icon name="academic-cap" type="outline" class="h-4 w-4" />
    """

    use Phoenix.Component

    def icon(assigns) do
      opts = assigns[:opts] || []
      type_opts = type_to_opts(assigns)
      class_opts = class_to_opts(assigns)

      opts =
        opts
        |> Keyword.merge(type_opts)
        |> Keyword.merge(class_opts)

      assigns = assign(assigns, opts: opts)

      ~H"""
      <%= Phosphoricons.icon(@name, @opts) %>
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
        [class: assigns.class]
      else
        []
      end
    end
  end
end
