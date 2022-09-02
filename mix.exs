defmodule HeroiconsElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :heroicons,
      version: "0.4.0",
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
      extra_applications: [:logger],
      mod: {Heroicons, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_html, "~> 2.14 or ~> 3.0"},
      {:phoenix_live_view, ">= 0.16.0", optional: true},
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
    [
      assets: "priv/"
    ]
  end
end
