defmodule Paradex.MixProject do
  use Mix.Project

  @name "Paradex"
  @version "0.1.0"
  @source_url "https://github.com/Moosieus/paradedb_ecto"

  def project do
    [
      app: :paradex,
      name: @name,
      description: "Ecto fragments for Paradex.",
      source_url: @source_url,
      homepage_url: @source_url,
      version: @version,
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      aliases: aliases()
    ]
  end

  defp elixirc_paths(:test), do: elixirc_paths(:dev) ++ ["test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def package do
    [
      licenses: ["Apache-2.0"],
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      links: %{"GitHub" => @source_url}
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
      {:ecto, ">= 0.0.0"},
      {:ecto_sql, "~> 3.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:postgrex, "~> 0.19", only: :test},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp docs do
    [
      name: @name,
      main: "readme",
      source_ref: "main",
      source_url: @source_url,
      extras: [
        "README.md"
      ]
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
