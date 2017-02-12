defmodule AnyBar do
  @default_port 1738

  @doc """
  Changes `color` of AnyBar running on given `port`
  """
  @spec change(String.t, Integer.t) :: :ok | { :error, String.t }
  def change(color, port \\ @default_port, udp_client \\ :gen_udp) do
    {:ok, socket } = udp_client.open(0, [:binary])
    udp_client.send(socket, 'localhost', port, color)
  end

  @doc """
  Returns the default port of AnyBar
  """
  def default_port do
    @default_port
  end
end
