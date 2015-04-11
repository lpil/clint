defmodule Clint.Mixfile do
  use Mix.Project

  def project do
    [
      app: :clint,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps
    ]
  end

  def application do
    [
      applications: [
        # :cowboy,
        # :plug,
        :logger,
      ],
    ]
  end

  defp deps do
    [
      {:cowboy, "~>1.0.0"},
      {:plug, "~>0.11.0"},
      # {:shouldi, "~> 0.2.2", only: :test},
    ]
  end
end
