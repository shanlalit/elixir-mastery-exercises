defmodule Redpull do
  @moduledoc "An example module."

  @doc """
  Prints a greeting to standard output.
  """

  def main(_) do
    IO.puts "Escript!"
  end

  @spec minus(integer, integer) :: integer
  defp minus(a, b) do
    a - b
  end
end
