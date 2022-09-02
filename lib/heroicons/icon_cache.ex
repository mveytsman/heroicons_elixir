defmodule Heroicons.IconCache do

  @doc "Get's an icon's body from the filesystem"
  # TODO implement ETS-based caching & benchmark
  def icon_body(path) do
    icon = File.read!(path)

    <<"<svg ", body::binary>> = icon

    body
  end
end
