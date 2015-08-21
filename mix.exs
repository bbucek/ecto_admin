defmodule EctoAdmin.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_admin,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: {EctoAdmin, []},
      applications: [:logger, :cowboy, :plug, :postgrex, :ecto]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 0.5"},
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"}
    ]
  end
end
