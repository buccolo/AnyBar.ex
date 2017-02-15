defmodule AnyBar.CLI do
  @moduledoc """
  Invokes AnyBar from command-line. See `Mix.Tasks.Anybar`.
  """

  @spec main([String.t], module) :: any
  def main(args, anybar_client \\ AnyBar) do
    {options, [color], _} = parse(args)

    anybar_client.change(color, options[:port] || AnyBar.default_port())
  end

  defp parse(args) do
    OptionParser.parse(args, aliases: [p: :port], strict: [port: :integer])
  end
end
