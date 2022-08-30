defmodule Heroicons do
  @moduledoc """
  This library provides Phoenix Components for every [Heroicon](https://github.com/tailwindlabs/heroicons).
  See `Heroicons.Outline` and `Heroicons.Solid` for the two styles of icon.

  ## Examples
      <Heroicons.Outline.adjustments />

      <Heroicons.Solid.arrow_circle_right class="w-6 h-6" />

  Can also be used as a function

      <%= Heroicons.Outline.adjustments() %>

      <%= Heroicons.Solid.arrow_circle_right(class: "w-6 h-6") />

  Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)
  """

  defmodule Outline do
    @moduledoc """
    Outline style icons drawn with a stroke, packaged as Phoenix Components.

    For primary navigation and marketing sections, with an outlined appearance,
    designed to be rendered at 24x24.
    """

    use Heroicons.Generator, icon_dir: "outline/"
  end

  defmodule Solid do
    @moduledoc """
    Solid style icons drawn with fills, packaged as Phoenix Components.

    For primary navigation and marketing sections, with a filled appearance,
    designed to be rendered at 24x24.
    """

    use Heroicons.Generator, icon_dir: "solid/"
  end

  defmodule Mini do
    @moduledoc """
    Solid style icons drawn with fills, packaged as Phoenix Components.

    For smaller elements like buttons, form elements, and to support text,
    designed to be rendered at 20x20.
    """

    use Heroicons.Generator, icon_dir: "mini/"
  end
end
