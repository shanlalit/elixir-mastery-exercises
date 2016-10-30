defmodule Redpull.Test do
  use ExUnit.Case
  doctest Redpull

  test "returns a binary" do
    assert is_binary(Redpull.gimme_a_string)
  end

  test "returns the arithmetic mean" do
    nums = [1, 2, 3, 4]
    assert Redpull.average(nums) === 2.5
  end

  test "returns a weighted average" do
    nums = [1, 2, 3, 4]
    weights = [0, 10, 3, 1]
    assert Redpull.average(nums, weights) === 8.25
  end
end
