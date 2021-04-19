# Heroicons

[Heroicons](https://github.com/tailwindlabs/heroicons) are "a set of free MIT-licensed high-quality SVG icons for you to use in your web projects". This package gives you Elixir functions to drop Heroicons into your HTML, styled with arbitrary classes.

Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

## Installation

Add Heroicons to your `mix.exs`:

defp deps do
  [
    {:heroicons, "~> 0.2.2"}
  ]
end

After that, run `mix deps.get`.

## Usage

The icons are in `Heroicons.Solid` and `Heroicons.Outline`. You can get a heroicon by name

```eex
<%= Heroicons.Solid.cake() %>
```

and style it with some classes

```eex
<%= Heroicons.Solid.cake(class: "h-6 w-6 text-gray-500") %>
```

Note these functions return `Phoenix.HTML.Safe` iodata:
```elixir
iex(1)> Heroicons.Solid.academic_cap
{:safe,
 ["<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\" fill=\"currentColor\"", #...

iex(2)> Heroicons.Solid.academic_cap |> Phoenix.HTML.safe_to_string
"<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\" fill=\"currentColor\">\n  ..."
```

For a full list of icons see [the docs](https://hexdocs.pm/heroicons/api-reference.html) or [heroicons.com](https://heroicons.com/).
