defmodule Heroicons.Generator do
  defmacro __using__(icon_dir: icon_dir) do
    icon_paths =
      Path.absname(icon_dir, :code.priv_dir(:heroicons))
      |> Path.join("*.svg")
      |> Path.wildcard()

    require Phoenix.Component

    for path <- icon_paths do
      generate(path)
    end
  end

  @doc false
  def generate(path) do
    name = Heroicons.Generator.name(path)

    quote do
      @doc Heroicons.Generator.doc(unquote(path))
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
  def doc(path) do
    name = name(path)

    """
    ![](assets/#{Path.relative_to(path, :code.priv_dir(:heroicons))}) {: width=24px}

    ## Examples

    Use as a `Phoenix.Component`

        <.#{name} />
        <.#{name} class="h-6 w-6 text-gray-500" />

    or as a function

        <%= #{name}() %>
        <%= #{name}(class: "h-6 w-6 text-gray-500") %>
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

    {component, _binding} =
      Code.eval_quoted(
        Heroicons.IconCache.fetch_component(path),
        assigns: assigns
      )

    component
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

    {:safe,
     [
       "<svg",
       Phoenix.HTML.Safe.to_iodata(attrs),
       " ",
       Heroicons.IconCache.fetch_body(path)
     ]}
  end
end
