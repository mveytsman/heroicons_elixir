defmodule Phosphoricons do
  @moduledoc """
  This library provides Phoenix Components for every [Phosphoricon](https://github.com/phosphor-icons/phosphor-home#phosphor-icons).

  1047 icons and counting
  6 weights: Thin, Light, Regular, Bold, Fill, and Duotone
  Designed at 16 x 16px to read well small and scale up big
  Raw stroke information retained to fine-tune the style

  ## Examples
      <Phosphoricons.Fill.flower-fill />

      <Phosphoricons.Thin.chat-fill class="w-6 h-6" />

  Can also be used as a function

      <%= Phosphoricons.Fill.flower-fill() %>

      <%= Phosphoricons.Thin.chat-fill(class: "w-6 h-6") />

  Phosphoricons are designed by by [Tobias Fried](https://github.com/rektdeckard)
  """
  use Phosphoricons.Generator
end
