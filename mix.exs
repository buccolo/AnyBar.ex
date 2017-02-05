defmodule Anybar.Mixfile do
  use Mix.Project

  def project do
    [app: :anybar,
     version: "0.1.0",
     elixir: "~> 1.4",
     description: "Elixir interface for AnyBar app",
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: escript(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  def escript do
    [main_module: AnyBar.CLI]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp package do
    [ licenses: ["MIT"],
      maintainers: ["Bruno Buccolo"],
      links: ["https://github.com/buccolo/anybar.ex"] ]
  end
end