defmodule Phosphoricons.Generator do
  @moduledoc """
  Goes through all weight variants and generates alphabet modules for
  each of the icons. For example the `alarm` icon will be under
  - Fill.A.alarm/0
  - Regular.A.alarm/0
  - Thin.A.alarm/0
  - and so on

  This was necessary because erlang seems to have a 1024 limit when adding functions dynamically
  to a module.
  """
  defmacro __using__(_opts) do
    for weight <- ["Thin", "Light", "Regular", "Bold", "Fill", "Duotone"] do
      for letter <- ?a..?z do
        letter = <<letter::utf8>>
        module_name = Code.string_to_quoted!("#{weight}.#{String.upcase(letter)}")
        icon_dir = "#{weight}/"

        quote do
          defmodule unquote(module_name) do
            use Phosphoricons.IconGenerator, icon_dir: unquote(icon_dir), prefix: unquote(letter)
          end
        end
      end
    end
  end
end
