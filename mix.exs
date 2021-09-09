defmodule HeroiconsElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :heroicons,
      version: "0.2.4",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Heroicons",
      source_url: "https://github.com/mveytsman/heroicons_elixir",
      description: "Include Heroicons as SVG-strings in your Elixir/Phoenix project!",
      docs: docs(),
      package: package()
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
      {:phoenix_html, "~> 2.14 or ~> 3.0"},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false}
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
