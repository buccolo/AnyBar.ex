defmodule AnyBar.CLITest do
  use ExUnit.Case, async: true
  doctest AnyBar.CLI

  defmodule TestAnyBar do
    def change(color, port) do
      send self(), {:change, color, port}
    end
  end

  test "parses color from args" do
    AnyBar.CLI.main(~w(black), TestAnyBar)
    assert_received {:change, "black", 1738}
  end

  test "parses custom port from args" do
    AnyBar.CLI.main(~w(black -p 1234), TestAnyBar)
    assert_received {:change, "black", 1234}

    AnyBar.CLI.main(~w(red --port 666), TestAnyBar)
    assert_received {:change, "red", 666}
  end
end
