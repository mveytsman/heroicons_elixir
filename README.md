# Heroicons

[Heroicons](heroicons.com) are "a set of free MIT-licensed high-quality SVG icons for you to use in your web projects". This package gives you Elixir functions to drop Heroicons into your HTML, styled with arbitrary classes.

This library provides optimized svgs for each Heroicon packaged as a Phoenix Component.

Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

Current Heroicons Version: **2.0.10**.

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

The components are provided by the  `Heroicons`  module. Each icon is a Phoenix Component you can use in your HEEx templates.

By default the outline style is used:

```eex
<Heroicons.Solid.cake />
```

You can render the solid or mini styles by providing the `solid` or `mini` flags:

```eex
<Heroicons.Solid.cake solid />
<Heroicons.Solid.cake mini />
```

You can also provide arbitrary HTML attributes to the svg tag, such as classes:

```eex
<Heroicons.cake class="w-6 h-6 text-gray-500" />
```

For a full list of icons see [the docs](https://hexdocs.pm/heroicons/api-reference.html) or [heroicons.com](https://heroicons.com/).
