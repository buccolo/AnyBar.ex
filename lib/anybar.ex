defmodule AnyBar do
  @default_port 1738

  @moduledoc """
  Provides an Elixir interface for interacting with AnyBar

  ## Examples

      iex> AnyBar.change("blue")
      :ok

      iex> AnyBar.change("green", 12345)
      :ok
  """

  @doc """
  Changes `color` of AnyBar running on the given `port`
  """
  @spec change(String.t, integer, module) :: :ok | {:error, String.t}
  def change(color, port \\ @default_port, udp_client \\ :gen_udp) do
    {:ok, socket} = udp_client.open(0, [:binary])
    udp_client.send(socket, 'localhost', port, color)
  end

  @doc """
  Returns the default port of AnyBar
  """
  @spec default_port :: integer
  def default_port do
    @default_port
  end
end
