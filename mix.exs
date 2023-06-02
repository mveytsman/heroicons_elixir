defmodule PhosphoriconsElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :phosphoricons,
      version: "0.2.0",
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
      {:phoenix_html, "~> 3.3.1"},
      {:phoenix_live_view, ">= 0.19.0", optional: true},
      {:ex_doc, "~> 0.29.4", only: :dev, runtime: false},
      # Testing
      {:mix_test_watch, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:ex_unit_notifier, "~> 1.3.0", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.7.0", only: [:dev, :test], runtime: false},
      {:sobelow, "~> 0.12.2", only: [:dev, :test], runtime: false}
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
