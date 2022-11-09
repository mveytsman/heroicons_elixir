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
      :outline ->
        ~H"<.svg_outline {@rest}><%= {:safe, @paths[:outline]} %></.svg_outline>"

      :solid ->
        ~H"<.svg_solid {@rest}><%= {:safe, @paths[:solid]} %></.svg_solid>"

      :mini ->
        ~H"<.svg_mini {@rest}><%= {:safe, @paths[:mini]} %></.svg_mini>"

      other ->
        raise ArgumentError, "unexpected type #{other}."
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

  defp svg_outline(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%= render_slot(@inner_block) %>
    </svg>
    """
  end

  attr :rest, :global,
    default: %{"aria-hidden": "true", viewBox: "0 0 24 24", fill: "currentColor"}

  slot(:inner_block, required: true)

  defp svg_solid(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%= render_slot(@inner_block) %>
    </svg>
    """
  end

  attr :rest, :global,
    default: %{"aria-hidden": "true", viewBox: "0 0 20 20", fill: "currentColor"}

  slot(:inner_block, required: true)

  defp svg_mini(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%= render_slot(@inner_block) %>
    </svg>
    """
  end
end