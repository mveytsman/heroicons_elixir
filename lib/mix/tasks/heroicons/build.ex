defmodule Mix.Tasks.Heroicons.Build do
  # Builds a new lib/heroicons.ex with bundled icon set.
  @moduledoc false
  @shortdoc false
  use Mix.Task

  @target_file "lib/heroicons.ex"

  def run(_args) do
    vsn = Mix.Tasks.Heroicons.Update.vsn()
    svgs_path = Mix.Tasks.Heroicons.Update.svgs_path()
    outlined = Path.wildcard(Path.join(svgs_path, "outline/**/*.svg"))
    solid = Path.wildcard(Path.join(svgs_path, "solid/**/*.svg"))
    mini = Path.wildcard(Path.join(svgs_path, "mini/**/*.svg"))
    ordered_icons = outlined ++ solid ++ mini

    icons =
      Enum.group_by(ordered_icons, &function_name(&1), fn file ->
        for path <- file |> File.read!() |> String.split("\n"),
            path = String.trim(path),
            String.starts_with?(path, "<path"),
            do: path
      end)

    Mix.Generator.copy_template("assets/heroicons.exs", @target_file, %{icons: icons, vsn: vsn},
      force: true
    )

    Mix.Task.run("format")
  end

  defp function_name(file) do
    file |> Path.basename() |> Path.rootname() |> String.split("-") |> Enum.join("_")
  end
end
