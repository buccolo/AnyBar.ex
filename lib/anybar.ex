defmodule AnyBar do
  def change(color, port, udp_client \\ :gen_udp) do
    {:ok, socket } = udp_client.open(0, [:binary])
    udp_client.send(socket, 'localhost', port, color)
  end
end
