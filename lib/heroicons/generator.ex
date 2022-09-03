defmodule Heroicons.Generator do
  @moduledoc false
  defmacro __using__(icon_dir: icon_dir) do
    icon_paths =
      Path.absname(icon_dir, :code.priv_dir(:heroicons))
      |> Path.join("*.svg")
      |> Path.wildcard()

    require Phoenix.Component

    for path <- icon_paths do
      relative_path = Path.relative_to(path, :code.priv_dir(:heroicons))
      generate(relative_path)
    end
  end

  @doc false
  def generate(path) do
    name = Heroicons.Generator.name(path)

    quote do
      @doc Heroicons.Generator.doc(unquote(name), unquote(path))
      def unquote(name)(assigns_or_opts \\ [])

      def unquote(name)(assigns) when is_map(assigns) do
        Heroicons.Generator.icon_component(unquote(path), assigns)
      end

      def unquote(name)(opts) when is_list(opts) do
        Heroicons.Generator.icon_function(unquote(path), opts)
      end
    end
  end

  @doc false
  def name(path) do
    Path.basename(path, ".svg")
    |> String.replace("-", "_")
    |> String.to_atom()
  end

  @doc false
  def doc(name, path) do
    """
    ![](assets/#{path}) {: width=24px}

    ## Examples

    Use as a `Phoenix.Component`

        <.#{name} />
        <.#{name} class="w-6 h-6 text-gray-500" />

    or as a function

        <%= #{name}() %>
        <%= #{name}(class: "w-6 h-6 text-gray-500") %>
    """
  end

  if function_exported?(Phoenix.Component, :assigns_to_attributes, 2) do
    @assign_mod Phoenix.Component
    @assigns_to_attrs_mod Phoenix.Component
  else
    @assign_mod Phoenix.LiveView
    @assigns_to_attrs_mod Phoenix.LiveView.Helpers
  end

  @doc false
  def icon_component(path, assigns) when is_map(assigns) do
    attrs = @assigns_to_attrs_mod.assigns_to_attributes(assigns)
    assigns = @assign_mod.assign(assigns, :attrs, attrs)

    dynamic = fn track_changes? ->
      changed =
        case assigns do
          %{__changed__: changed} when track_changes? -> changed
          _ -> nil
        end

      attrs =
        case Phoenix.LiveView.Engine.changed_assign?(changed, :attrs) do
          true -> elem(Phoenix.HTML.attributes_escape(assigns.attrs), 1)
          false -> nil
        end

      [attrs]
    end

    {icon_body, fingerprint} = Heroicons.Cache.fetch_icon(path)

    %Phoenix.LiveView.Rendered{
      static: [
        "<svg",
        icon_body
      ],
      dynamic: dynamic,
      fingerprint: fingerprint,
      root: true
    }
  end

  @doc false
  def icon_function(path, opts) when is_list(opts) do
    attrs =
      for {k, v} <- opts do
        safe_k =
          k |> Atom.to_string() |> String.replace("_", "-") |> Phoenix.HTML.Safe.to_iodata()

        safe_v = v |> Phoenix.HTML.Safe.to_iodata()

        {:safe, [?\s, safe_k, ?=, ?", safe_v, ?"]}
      end

    {icon_body, _fingerprint} = Heroicons.Cache.fetch_icon(path)

    {:safe,
     [
       "<svg",
       Phoenix.HTML.Safe.to_iodata(attrs),
       icon_body
     ]}
  end
end
