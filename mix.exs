defmodule IdqAuth.Mixfile do
  use Mix.Project

  def project do
    [
      app: :idq_auth,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      dialyzer: [ignore_warnings: "dialyzer.ignore-warnings"],

      # Docs
      name: "IdqAuth",
      source_url: "https://github.com/maxneuvians/idq_auth",
      homepage_url: "https://github.com/maxneuvians/idq_auth",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [extra_applications: [:logger],
     mod: {IdqAuth, []}]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:httpotion, "~> 3.0.2"},
      {:plug, "~> 1.0"},
      {:poison, "~> 3.1"},
      {:uuid, "~> 1.1"}
    ]
  end

  defp description do
    """
    NioGoogleAuthenticator is a collection of Elixir convenience functions
    to generate secrets and validate tokens used in conjunction with Google
    Authenticator. It also includes functions that automatically add a secret to
    an Ecto.Changeset.
    """
  end

  defp package do
    [# These are the default files included in the package
     files: ["doc", "lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Max Neuvians"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/maxneuvians/idq_auth",
              "Docs" => "https://github.com/maxneuvians/idq_auth"}]
  end
end
