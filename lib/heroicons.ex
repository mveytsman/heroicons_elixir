defmodule Heroicons do
  @moduledoc """
  This library provides functions and components for every [Heroicon](https://github.com/tailwindlabs/heroicons).

  Heroicons are provided as functions in `Heroicons.Outline` and `Heroicons.Solid`,
  and as `Phoenix.Component`s in `Heroicons.Components.Outline` and `Heroicons.Components.Solid`.

  Note that components require your project to have `:phoenix_live_view` as a dependency.

  Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)
  """

  defmodule Outline do
    @moduledoc """
    Outline style icons drawn with a stroke, packaged as functions.

    For primary navigation and marketing sections, designed to be rendered at 24x24.
    """

    use Heroicons.Generator, icon_dir: "outline/"
  end

  defmodule Solid do
    @moduledoc """
    Solid style icons drawn with fills,  packaged as functions.

    For buttons, form elements, and to support text, designed to be rendered at 20x20.
    """

    use Heroicons.Generator, icon_dir: "solid/"
  end
end
