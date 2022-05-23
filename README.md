# Phosphoricons

[Phosphor](https://github.com/phosphor-icons/phosphor-home#phosphor-icons) is a flexible icon family for interfaces, diagrams, presentations, by [Tobias Fried](https://github.com/rektdeckard).

1047 icons and counting
6 weights: Thin, Light, Regular, Bold, Fill, and Duotone
Designed at 16 x 16px to read well small and scale up big
Raw stroke information retained to fine-tune the style
More ways to use at [phosphoricons.com].

Current Phosphoricons Version: **1.4.0**

This library was a modification of the excellent work by [Max Veytsman](https://github.com/mveytsman) for the Heroicons library at [https://github.com/mveytsman/heroicons_elixir]

## Installation

Add Phosphoricons to your `mix.exs`:

```elixir
defp deps do
  [
    {:phosphoricons, "~> 0.0.1"}
  ]
end
```

After that, run `mix deps.get`.

## Usage

The components are in `Phosphoricons.Thin`, `Phosphoricons.Regular`, and so forth (check the Phosphoricons to know which weights exist). Each icon is a Phoenix Component you can use in your HEEx templates.

```eex
<Phosphoricons.Fill.A.alarm />
```

and style it with some classes

```eex
<Phosphoricons.Fill.A.alarm class="h-6 w-6 text-gray-500" />
```

There are also function versions of each component:
```eex
<%= Phosphoricons.Fill.A.alarm() %>

<%= Phosphoricons.Fill.A.alarm(class: "h-6 w-6 text-gray-500") %>
```

For a full list of icons see [the docs](https://hexdocs.pm/phosphoricons/api-reference.html) or [https://phosphoricons.com/](https://phosphoricons.com/).
