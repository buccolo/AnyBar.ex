defmodule Mix.Tasks.Anybar do
  use Mix.Task

  def run(args), do: AnyBar.CLI.main(args)
end
