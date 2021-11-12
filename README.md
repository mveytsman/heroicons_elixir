# Heroicons

[Heroicons](https://github.com/tailwindlabs/heroicons) are "a set of free MIT-licensed high-quality SVG icons for you to use in your web projects". This package gives you Elixir functions to drop Heroicons into your HTML, styled with arbitrary classes.

Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

## Installation

Add Heroicons to your `mix.exs`:

```elixir
defp deps do
  [
    {:heroicons, "~> 0.3.0"}
  ]
end
```

After that, run `mix deps.get`.

## Usage

The components are in `Heroicons.Solid` and `Heroicons.Outline`. Each icon is a Phoenix Component you can use in your HEEx templates.

```eex
<Heroicons.Solid.cake />
```

and style it with some classes

```eex
<Heroicons.Solid.cake class="h-6 w-6 text-gray-500" />
```

Note that if you are not using HEEx/LiveView, there are (deprecated) function versions of each component:
```eex
<%= Heroicons.Solid.cake() %>

<%= Heroicons.Solid.cake(class: "h-6 w-6 text-gray-500") %>
```

For a full list of icons see [the docs](https://hexdocs.pm/heroicons/api-reference.html) or [heroicons.com](https://heroicons.com/).
