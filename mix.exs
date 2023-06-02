defmodule HeroiconsElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :heroicons,
      version: "0.5.3",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Heroicons",
      source_url: "https://github.com/mveytsman/heroicons_elixir",
      description: "Phoenix components for Heroicons!",
      docs: docs(),
      package: package(),
      xref: [exclude: [:httpc, :public_key]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, ">= 0.18.2"},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
      {:castore, ">= 0.0.0"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mveytsman/heroicons_elixir"}
    ]
  end

  defp docs do
    []
  end
end
