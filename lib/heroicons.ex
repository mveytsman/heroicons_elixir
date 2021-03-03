defmodule Heroicons do
  @moduledoc """
  This library provides functions for every [Heroicon](https://github.com/tailwindlabs/heroicons).
  See `Heroicons.Outline` and `Heroicons.Solid` for the two styles of icon.

  Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)
  """

  @doc false
  defmacro __before_compile__(%Macro.Env{module: module}) do
    unless Module.has_attribute?(module, :icon_path) do
      raise CompileError, description: "@icon_path attrubute is required"
    end

    icon_paths =
      Module.get_attribute(module, :icon_path)
      |> Path.join("*.svg")
      |> Path.wildcard()

    for path <- icon_paths do
      name =
        Path.basename(path, ".svg")
        |> String.replace("-", "_")
        |> String.to_atom()

      quote do
        @doc """
        ![](#{unquote(path)}) {: width=24px}

        ## Examples
            iex> #{unquote(name)}()
            iex> #{unquote(name)}(class: "h-6 w-6 text-gray-500")
        """
        @spec unquote(name)(keyword(binary)) :: binary
        def unquote(name)(opts \\ []) do
          icon = File.read!(unquote(path))
          {i, _} = :binary.match(icon, ">")

          {head, tail} = String.split_at(icon, i)

          attrs =
            opts
            |> Enum.map_join(fn {k, v} -> ~s( #{k}="#{v}") end)

          head <> attrs <> tail
        end
      end
    end
  end
end
