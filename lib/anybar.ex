defmodule AnyBar do
  @default_port 1738
  def change(color, port \\ @default_port, udp_client \\ :gen_udp) do
    {:ok, socket } = udp_client.open(0, [:binary])
    udp_client.send(socket, 'localhost', port, color)
  end

  def default_port do
    @default_port
  end
end
