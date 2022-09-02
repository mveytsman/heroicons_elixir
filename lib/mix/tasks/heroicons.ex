defmodule Mix.Tasks.Heroicons do
  @moduledoc """
  Invokes heroicons mix utilities.
  Usage:
      $ mix heroicons
  """

  @shortdoc "Invokes heroicons mix utilities"

  use Mix.Task

  @impl true
  def run(args) do
    {_opts, args} = OptionParser.parse!(args, strict: [])

    case args do
      [] -> help()
      _ -> Mix.raise("Invalid arguments, expected: mix heroicons")
    end
  end

  defp help() do
    Mix.Task.run("app.start")
    Mix.shell().info("Heroicons v#{Application.spec(:heroicons, :vsn)}")
    Mix.shell().info("Include Heroicons as SVG-strings in your Elixir/Phoenix project!")
    Mix.shell().info("\nAvailable tasks:\n")
    Mix.Tasks.Help.run(["--search", "heroicons."])
  end
end
