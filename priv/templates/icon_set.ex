defmodule <%= inspect module %> do
  @moduledoc """
  <%= moduledoc %>
  """

  use Phoenix.Component

  if function_exported?(Phoenix.Component, :assigns_to_attributes, 2) do
    @assign_mod Phoenix.Component
    @assigns_to_attrs_mod Phoenix.Component
  else
    @assign_mod Phoenix.LiveView
    @assigns_to_attrs_mod Phoenix.LiveView.Helpers
  end
  <%= for path <- icon_paths, name = icon_name(path), body = icon_body(path, svg_opts) do %>
  @doc """
  ![](assets/<%= Path.relative_to(path, :code.priv_dir(:heroicons)) %>) {: width=24px}

  ## Examples

  Use as a `Phoenix.Component`

      <%= ~s(<.#{name} />) %>

      <%= ~s(<.#{name} class="h-6 w-6 text-gray-500" />) %>

  or as a function

      <%= ~s(<%= #{name}() %>) %>

      <%= ~s(<%= #{name}(class: "h-6 w-6 text-gray-500") %>) %>
  """
  def <%= name %>(assigns_or_opts \\ [])

  def <%= name %>(assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs} <%= String.replace(body, "\n", "\n    ") %>
    """
  end

  def <%= name %>(opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {:safe, ["<svg", Phoenix.HTML.Safe.to_iodata(attrs), <%= inspect " " <> body, printable_limit: :infinity %>]}
  end
<% end %>
end
