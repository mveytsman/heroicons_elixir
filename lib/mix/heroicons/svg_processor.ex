defmodule Mix.Heroicons.SvgProcessor do
  alias Mix.Heroicons.SvgProcessor.Handler

  @moduledoc """
  An SVG parser loosly based on https://github.com/svg/svgo

  ## Options

  Currently supports the following options:
  * `:remove_dimensions` - remove the `width` and `height` attributes. Defaults to false.
  * `:sort_attributes` - sort the svg attributes by name. Default to false.
  * `:remove_attributes` - list of attributes to remove
  * `:add_attributes` - list of `{"name", "value"}` pairs of attributes to add
  """

  def process(svg, opts \\ []) do
    {:ok, stack} = Saxy.parse_string(svg, Handler, {[], opts})
    Saxy.encode!(stack)
  end
end
