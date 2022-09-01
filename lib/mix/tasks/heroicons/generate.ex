defmodule Mix.Tasks.Heroicons.Generate do
  use Mix.Task
  import Mix.Heroicons.GeneratorHelpers

  @shortdoc "Generate heroicons"

  @icon_sets [
    %{
      module: Heroicons.Outline,
      path: "lib/heroicons/outline.ex",
      moduledoc:
        "Outline style icons drawn with a stroke, packaged as Phoenix Components.\n\n  For primary navigation and marketing sections, with an outlined appearance,\n  designed to be rendered at 24x24.",
      icon_dir: "icons/outline/",
      # Following https://github.com/tailwindlabs/heroicons/blob/b933d51df1f27c35414389fea185e9bac0097481/svgo.24.outline.yaml
      svg_opts: [
        remove_dimensions: true,
        sort_attributes: true,
        remove_attributes: ["stroke"],
        remove_path_attributes: ["stroke-width"],
        add_attributes: [
          {"stroke-width", "1.5"},
          {"stroke", "currentColor"},
          {"aria-hidden", "true"}
        ]
      ]
    },
    %{
      module: Heroicons.Solid,
      path: "lib/heroicons/solid.ex",
      moduledoc:
        "Solid style icons drawn with fills, packaged as Phoenix Components.\n\n  For primary navigation and marketing sections, with a filled appearance,\n  designed to be rendered at 24x24.",
      icon_dir: "icons/solid/",
      # Following https://github.com/tailwindlabs/heroicons/blob/b933d51df1f27c35414389fea185e9bac0097481/svgo.24.solid.yaml
      svg_opts: [
        remove_dimensions: true,
        sort_attributes: true,
        remove_attributes: ["fill"],
        add_attributes: [
          {"fill", "currentColor"},
          {"aria-hidden", "true"}
        ]
      ]
    },
    %{
      module: Heroicons.Mini,
      path: "lib/heroicons/mini.ex",
      moduledoc:
        "Solid style icons drawn with fills, packaged as Phoenix Components.\n\n  For smaller elements like buttons, form elements, and to support text,\n  designed to be rendered at 20x20.",
      icon_dir: "icons/mini/",
      # Following https://github.com/tailwindlabs/heroicons/blob/b933d51df1f27c35414389fea185e9bac0097481/svgo.20.solid.yaml
      svg_opts: [
        remove_dimensions: true,
        sort_attributes: true,
        remove_attributes: ["fill"],
        add_attributes: [
          {"fill", "currentColor"},
          {"aria-hidden", "true"}
        ]
      ]
    }
  ]

  @impl Mix.Task
  def run(_args) do
    for %{
          module: module,
          path: path,
          moduledoc: moduledoc,
          icon_dir: icon_dir,
          svg_opts: svg_opts
        } <-
          @icon_sets do
      icon_paths =
        Path.absname(icon_dir, :code.priv_dir(:heroicons))
        |> Path.join("*.svg")
        |> Path.wildcard()

      Mix.Generator.create_file(
        path,
        EEx.eval_file(
          "priv/templates/icon_set.ex",
          [
            module: module,
            moduledoc: moduledoc,
            icon_paths: icon_paths,
            svg_opts: svg_opts
          ],
          functions: __ENV__.functions
        )
      )
    end
  end
end
