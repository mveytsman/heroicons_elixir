# Heroicons

[Heroicons](https://heroicons.com) are "a set of free MIT-licensed high-quality SVG icons for you to use in your web projects". This package gives you Elixir functions to drop Heroicons into your HTML, styled with arbitrary classes.

This library provides optimized svgs for each Heroicon packaged as a Phoenix Component.

Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

Current Heroicons Version: **2.0.13**.

## Installation

Add Heroicons to your `mix.exs`:

```elixir
defp deps do
  [
    {:heroicons, "~> 0.5.0"}
  ]
end
```

After that, run `mix deps.get`.

## Usage

The components are provided by the `Heroicons` module. Each icon is a Phoenix Component you can use in your HEEx templates.

By default, the icon components will use the outline style, but the `solid` or
`mini` attributes may be passed to select styling, for example:

```eex
<Heroicons.cake />
<Heroicons.cake solid />
<Heroicons.cake mini />
```

You can also pass arbitrary HTML attributes to the components, such as classes:

 ```eex
<Heroicons.cake class="w-2 h-2" />
<Heroicons.cake solid class="w-2 h-2 text-gray-500" />
```

For a full list of icons see [the docs](https://hexdocs.pm/heroicons/api-reference.html) or [heroicons.com](https://heroicons.com/).
