defmodule Anybar.CLITest do
  use ExUnit.Case
  doctest Anybar.CLI

  defmodule TestAnybar do
    def change(color, port) do
      send self(), {:change, color, port}
    end
  end

  test "parses color from args" do
    Anybar.CLI.main(~w(black), TestAnybar)
    assert_received {:change, "black", 1738}
  end

  test "parses custom port from args" do
    Anybar.CLI.main(~w(black -p 1234), TestAnybar)
    assert_received {:change, "black", 1234}

    Anybar.CLI.main(~w(red --port 666), TestAnybar)
    assert_received {:change, "red", 666}
  end
end
