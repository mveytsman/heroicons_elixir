defmodule Heroicons do
  @moduledoc """
  Provides precompiled icon compiles from [heroicons.com v2.0.12](heroicons.com).

  Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

  ## Usage

  Hero icons come in three styles – outline (`24x24`), solid (`24x24`), and mini (`20x20`).

  By default, the icon components will use the outline style, but the `solid` or
  `mini` attributes may be passed to select styling, for example:

  ```heex
  <Heroicons.cake />
  <Heroicons.cake solid />
  <Heroicons.cake mini />
  ```

  You can also pass arbitrary HTML attributes to the components:

   ```heex
  <Heroicons.cake class="w-2 h-2" />
  <Heroicons.cake solid class="w-2 h-2" />
  ```

  ## Staying up-to-data

  This Library can provide any version of Heroicons. The default setting is tu use the latest one.
  To update icons with the latest release of Heroicons you should simply recompile
  this dependency: `mix deps.compile heroicons --force`

  If you want to stay on specific version you can take advantage of config.
  For example: `config :heroicons, heroicons_version: "v2.0.10"` (version must be an existing git tag)

  There are other settings available (for more advanced use):
  `:heroicons_repository` - Allows to override repository used by this library (useful when you maintain your own fork of Heroicons)
  `:allowed_types` - Allows advanced configuration of icon variants that should be available for use
  `:default_type` - Use in conjunction with `:allowed_types` to tune how the library behaves

  ## Heroicons License Attribution

  MIT License

  Copyright (c) 2020 Refactoring UI Inc.

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  """
  use Phoenix.Component
  use Heroicons.Builder

  defp svg(assigns) do
    case assigns.type do
      :outline -> ~H"<.svg_outline {@rest}><%= {:safe, @paths} %></.svg_outline>"
      :solid -> ~H"<.svg_solid {@rest}><%= {:safe, @paths} %></.svg_solid>"
      :mini -> ~H"<.svg_mini {@rest}><%= {:safe, @paths} %></.svg_mini>"
    end
  end

  attr :rest, :global,
    default: %{
      "aria-hidden": "true",
      fill: "none",
      viewBox: "0 0 24 24",
      "stroke-width": "1.5",
      stroke: "currentColor"
    }

  slot(:inner_block, required: true)

  defp svg_outline(assigns), do: generic_svg(assigns)

  attr :rest, :global,
    default: %{"aria-hidden": "true", viewBox: "0 0 24 24", fill: "currentColor"}

  slot(:inner_block, required: true)

  defp svg_solid(assigns), do: generic_svg(assigns)

  attr :rest, :global,
    default: %{"aria-hidden": "true", viewBox: "0 0 20 20", fill: "currentColor"}

  slot(:inner_block, required: true)

  defp svg_mini(assigns), do: generic_svg(assigns)

  defp generic_svg(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%= render_slot(@inner_block) %>
    </svg>
    """
  end
end
