defmodule Mix.Heroicons.GeneratorHelpers do
  alias Mix.Heroicons.SvgProcessor

  def icon_name(path) do
    Path.basename(path, ".svg")
    |> String.replace("-", "_")
    |> String.to_atom()
  end

  def icon_body(path, svg_opts) do
    icon =
      File.read!(path)
      |> SvgProcessor.process(svg_opts)

    <<"<svg ", body::binary>> = icon

    body
  end
end
