defmodule Anybar.CLI do
  def main(args) do
    {options, [color], _} = OptionParser.parse(args, aliases: [p: :port], strict: [port: :integer])

    Anybar.change(color, options[:port] || 1738)
  end
end
