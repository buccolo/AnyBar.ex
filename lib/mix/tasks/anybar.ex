defmodule Mix.Tasks.Anybar do
  use Mix.Task

  alias AnyBar.CLI

  @moduledoc """
  Runs AnyBar via mix.

      mix anybar blue
      mix anybar red --port 12345
  """

  @shortdoc "Changes the color of the AnyBar app"
  @spec run([String.t]) :: any
  def run(args), do: CLI.main(args)
end
