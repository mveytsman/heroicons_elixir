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
end
