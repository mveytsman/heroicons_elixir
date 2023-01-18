defmodule PhosphoriconsElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :phosphoricons,
      version: "0.0.4",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Phosphoricons",
      source_url: "https://github.com/noozo/phosphoricons_elixir",
      description: "Phoenix components for Phosphoricons!",
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
      {:phoenix_html, "~> 3.2.0"},
      {:phoenix_live_view, ">= 0.18.9", optional: true},
      {:ex_doc, "~> 0.29.1", only: :dev, runtime: false},
      # Testing
      {:mix_test_watch, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:ex_unit_notifier, "~> 1.2.0", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.6.7", only: [:dev, :test], runtime: false},
      {:sobelow, "~> 0.11.1", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/noozo/phosphoricons_elixir"}
    ]
  end

  defp docs do
    [
      assets: "priv/"
    ]
  end
end
