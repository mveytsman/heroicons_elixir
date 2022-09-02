# Heroicons

[Heroicons](https://github.com/tailwindlabs/heroicons) are "a set of free MIT-licensed high-quality SVG icons for you to use in your web projects". This package gives you Elixir functions to drop Heroicons into your HTML, styled with arbitrary classes.

This library provides optimized svgs for each Heroicon packaged as a Phoenix Component (and as a function for backwards-compatibility).

In order to provide the best balance of fast compilation times and run-time performance, Phoenix Components are just-in-time compiled on first use and then cached in an ETS-backed cache.

Heroicons are designed by [Steve Schoger](https://twitter.com/steveschoger)

Current Heroicons Version: **2.0.10**. It's possible to configure a different Heroicon version locally, see [mix heroicons.update](https://hexdocs.pm/heroicons/Mix.Tasks.Heroicons.Update.html)

## Installation

Add Heroicons to your `mix.exs`:

```elixir
defp deps do
  [
    {:heroicons, "~> 0.4.0"}
  ]
end
```

After that, run `mix deps.get`.

## Usage

The components are in `Heroicons.Solid`, `Heroicons.Outline`, and `Heroicons.Mini`. Each icon is a Phoenix Component you can use in your HEEx templates.

```eex
<Heroicons.Solid.cake />
```

and style it with some classes

```eex
<Heroicons.Solid.cake class="w-6 h-6 text-gray-500" />
```

There are also function versions of each component:
```eex
<%= Heroicons.Solid.cake() %>

<%= Heroicons.Solid.cake(class: "w-6 h-6 text-gray-500") %>
```

For a full list of icons see [the docs](https://hexdocs.pm/heroicons/api-reference.html) or [heroicons.com](https://heroicons.com/).
