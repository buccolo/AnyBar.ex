defmodule Mix.Tasks.Anybar do
  use Mix.Task

  @shortdoc "Changes the color of the AnyBar app"
  def run(args), do: AnyBar.CLI.main(args)
end
