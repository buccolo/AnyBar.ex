defmodule Anybar.CLI do
  def main(args, anybar \\ Anybar) do
    {options, [color], _} = OptionParser.parse(args, aliases: [p: :port], strict: [port: :integer])

    anybar.change(color, options[:port] || 1738)
  end
end
