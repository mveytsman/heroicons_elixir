defmodule Heroicons do
  @moduledoc """
  Provides precompiled icon compiles from [heroicons.com v<%= @vsn %>](https://heroicons.com).

  Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

  ## Usage

  Hero icons come in four styles – outline (`24x24`), solid (`24x24`), mini (`20x20`) and micro(`16x16`).

  By default, the icon components will use the outline style, but the `solid`,
  `mini` or micro attributes may be passed to select styling, for example:

  ```heex
  <Heroicons.cake />
  <Heroicons.cake solid />
  <Heroicons.cake mini />
  <Heroicons.cake micro />
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

  defp svg(assigns) do
    # Not all styles have the micro attribute
    Map.merge(%{micro: false}, assigns)
    |> case do
      %{mini: false, solid: false, micro: false} ->
        ~H"<.svg_outline {@rest}><%%= {:safe, @paths[:outline]} %></.svg_outline>"

      %{solid: true, mini: false, micro: false} ->
        ~H"<.svg_solid {@rest}><%%= {:safe, @paths[:solid]} %></.svg_solid>"

      %{mini: true, solid: false, micro: false} ->
        ~H"<.svg_mini {@rest}><%%= {:safe, @paths[:mini]} %></.svg_mini>"

      %{micro: true, solid: false, mini: false} ->
        ~H"<.svg_micro {@rest}><%%= {:safe, @paths[:micro]} %></.svg_micro>"

      %{} -> raise ArgumentError, "expected either mini or solid, but got both."
    end
  end


  attr :rest, :global, default: %{"aria-hidden": "true", fill: "none", viewBox: "0 0 24 24", "stroke-width": "1.5", stroke: "currentColor"}
  slot :inner_block, required: true
  defp svg_outline(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%%= render_slot(@inner_block) %>
    </svg>
    """
  end

  attr :rest, :global, default: %{"aria-hidden": "true", viewBox: "0 0 24 24", fill: "currentColor"}
  slot :inner_block, required: true
  defp svg_solid(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%%= render_slot(@inner_block) %>
    </svg>
    """
  end

  attr :rest, :global, default: %{"aria-hidden": "true", viewBox: "0 0 20 20", fill: "currentColor"}
  slot :inner_block, required: true
  defp svg_mini(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%%= render_slot(@inner_block) %>
    </svg>
    """
  end

  attr :rest, :global, default: %{"aria-hidden": "true", viewBox: "0 0 16 16", fill: "currentColor"}
  slot :inner_block, required: true
  defp svg_micro(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" {@rest}>
      <%%= render_slot(@inner_block) %>
    </svg>
    """
  end

  <%= for  {func, [outline, solid, mini, micro]} = _icon when not is_nil(micro) <- @icons do %>
  @doc """
  Renders the `<%= func %>` icon.

  By default, the outlined (24x24) component is used, but the `solid`, `mini` or `micro`
  attributes can be provided for alternative styles.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Heroicons.<%= func %> />
  <Heroicons.<%= func %> class="w-4 h-4" />
  <Heroicons.<%= func %> solid />
  <Heroicons.<%= func %> mini />
  <Heroicons.<%= func %> micro />
  <Heroicons.<%= func %> outline />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :outline, :boolean, default: true
  attr :solid, :boolean, default: false
  attr :mini, :boolean, default: false
  attr :micro, :boolean, default: false

  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{outline: ~S|<%= outline %>|, solid: ~S|<%= solid %>|, mini: ~S|<%= mini %>|, micro: ~S|<%= micro %>|}))
  end
  <% end %>

  <%= for  {func, [outline, solid, mini]} = _icon  <- @icons do %>
  @doc """
  Renders the `<%= func %>` icon.

  By default, the outlined (24x24) component is used, but the `solid` or `mini`
  attributes can be provided for alternative styles.

  You may also pass arbitrary HTML attributes to be applied to the svg tag.

  ## Examples

  ```heex
  <Heroicons.<%= func %> />
  <Heroicons.<%= func %> class="w-4 h-4" />
  <Heroicons.<%= func %> solid />
  <Heroicons.<%= func %> mini />
  <Heroicons.<%= func %> outline />
  ```
  """
  attr :rest, :global, doc: "the arbitrary HTML attributes for the svg container", include: ~w(fill stroke stroke-width)
  attr :outline, :boolean, default: true
  attr :solid, :boolean, default: false
  attr :mini, :boolean, default: false
  def <%= func %>(assigns) do
    svg(assign(assigns, paths: %{outline: ~S|<%= outline %>|, solid: ~S|<%= solid %>|, mini: ~S|<%= mini %>|}))
  end
  <% end %>
end
