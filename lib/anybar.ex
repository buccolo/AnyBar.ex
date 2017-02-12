defmodule Anybar do
  def change(color, port) do
    {:ok, socket } = :gen_udp.open(0, [:binary])
    :gen_udp.send(socket, 'localhost', port, color)
  end
end
