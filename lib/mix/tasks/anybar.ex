defmodule Mix.Tasks.Anybar do
  use Mix.Task

  def run(args), do: Anybar.CLI.main(args)
end
