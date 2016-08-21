defmodule ExAcme.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_acme,
      version: "0.1.0-alpha.0",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      preferred_cli_env: [
        vcr: :test, "vcr.delete": :test, "vcr.check": :test, "vcr.show": :test
      ],
      name: "ex-acme",
      description: "A Elixir client for the letsencrypt's ACME protocol.",
      deps: deps(),
      package: package(),
      aliases: aliases()
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE*", "CHANGELOG.md"],
      maintainers: ["Martin Schurig"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/schurig/ex-acme"},
    ]
  end

  def application do
    [applications: [:logger, :jose, :httpoison]]
  end

  defp deps do
    [
      {:jose, "~> 1.8"},
      {:httpoison, "~> 0.9.0"},
      {:exvcr, "~> 0.7", only: :test},
      {:credo, "~> 0.4.5", only: [:dev, :test]},
      {:inch_ex, "~> 0.5.3", only: [:dev, :test, :docs]},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp aliases do
    []
  end
end
