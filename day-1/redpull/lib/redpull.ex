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

  def gimme_a_string do
    "a string"
  end

  @doc """
  Computes the arithmetic mean.

      iex> Redpull.average([1,2,3,4])
      2.5
  """
  def average(list) do
    Enum.sum(list) / Enum.count(list)
  end

  @doc """
  Computes the weighted average.

      iex> Redpull.average([1,2,3,4], [4,3,2,1])
      5.0
  """
  def average(list, weights) do
    total = Enum.zip(list, weights)
            |> Enum.map(fn({n, weight}) -> n * weight end)
            |> Enum.sum

    total / Enum.count(list)
  end
end
