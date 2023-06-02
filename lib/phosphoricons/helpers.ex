defmodule Phosphoricons.Helpers do
  @moduledoc """
    Helper module for Phosphoricons
  """

  @doc "Removes the suffix type from an icon name"
  def remove_appendix(str) do
    str
    |> String.replace_suffix("_thin", "")
    |> String.replace_suffix("_light", "")
    |> String.replace_suffix("_bold", "")
    |> String.replace_suffix("_fill", "")
    |> String.replace_suffix("_duotone", "")
  end

  @doc "Converts opts to HTML attributes"
  def opts_to_attrs(opts) do
    for {key, value} <- opts do
      key =
        key
        |> Atom.to_string()
        |> String.replace("_", "-")
        |> Phoenix.HTML.Safe.to_iodata()

      value = Phoenix.HTML.Safe.to_iodata(value)

      [?\s, key, ?=, ?", value, ?"]
    end
  end

  @doc "Inserts HTML attributes into an SVG icon"
  def insert_attrs(head, attrs, rest) do
    Phoenix.HTML.raw([head, attrs, rest])
  end
end
