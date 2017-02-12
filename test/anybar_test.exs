defmodule AnybarTest do
  use ExUnit.Case, async: true
  doctest Anybar

  test "sends color through specified UDP port" do
    defmodule TestUDPClient do
      def open(0, [:binary]) do
        {:ok, :open_socket}
      end

      def send(:open_socket, 'localhost', port, color) do
        send self(), {:send, color, port}
      end
    end

    Anybar.change('orange', 1234, TestUDPClient)

    assert_received {:send, 'orange', 1234}
  end
end
