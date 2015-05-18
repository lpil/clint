defmodule Clint.Mixfile do
  use Mix.Project

  def project do
    [
      app: :clint,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps,
      name: "Clint",
      source_url: "https://github.com/lpil/clint",
      description: "An Elixir web micro-framework, inspired by Sinatra",
      package: [
        contributors: ["Louis Pilfold"],
        licenses: ["MIT"],
        links: %{ "GitHub" => "https://github.com/lpil/clint" },
        files: ~w(mix.exs lib README.md LICENCE)
      ]
    ]
  end

  def application do
    [
      applications: [
        :cowboy,
        :plug,
        :logger,
      ],
    ]
  end

  defp deps do
    [
      {:cowboy, "~>1.0.0"},
      {:plug, "~>0.11.0"},
      {:mix_test_watch, "~> 0.1.1"},
      {:shouldi, "~> 0.2.2", only: :test},
    ]
  end

  Application.put_env Clint, :templates_dir, "templates/"
end
