defmodule AnyBar.CLI do
  def main(args, anybar_client \\ AnyBar) do
    {options, [color], _} = OptionParser.parse(args, aliases: [p: :port], strict: [port: :integer])

    anybar_client.change(color, options[:port] || 1738)
  end
end
