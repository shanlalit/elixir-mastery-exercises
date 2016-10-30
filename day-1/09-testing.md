Exercise 1
==========

* Write a FAILING test, make sure that it fails and you see *red*

```exs
# day-1/redpull/test/redpull_test.exs L1-L8 (22200a6a)

defmodule RedpullTest do
  use ExUnit.Case
  doctest Redpull

  test "returns a binary" do
    assert is_binary(Redpull.gimme_a_string)
  end
end
```

```
  1) test returns a binary (RedpullTest)
     test/redpull_test.exs:5
     Expected truthy, got false
     code: is_binary(Redpull.gimme_a_string())
     stacktrace:
       test/redpull_test.exs:6: (test)



Finished in 0.02 seconds
1 test, 1 failure
```

Exercise 1.1
============

```ex
# day-1/redpull/lib/redpull.ex L1-L20 (22200a6a)

defmodule Redpull do
  # . . .

  def gimme_a_string do
    "a string"
  end
end
```

```
.

Finished in 0.02 seconds
1 test, 0 failures
```

Exercise 2
==========

* Write tests for map, reduce, filter
  Answers:
  [answers](https://github.com/MonkeyIsNull/fp/blob/master/test/fp_test.exs)

Bonus Exerise
=============

* Without looking at the slides, write a doctest

```ex
# day-1/redpull/test/redpull_test.exs L3 (22200a6a)

  doctest Redpull
```

```ex
# day-1/redpull/lib/redpull.ex L21-L43 (22200a6a)

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
```

```
  1) test doc at Redpull.average/2 (2) (Redpull.Test)
     test/redpull_test.exs:3
     Doctest failed
     code: Redpull.average([1,2,3,4], [4,3,2,1]) === 35.0
     lhs:  5.0
     stacktrace:
       lib/redpull.ex:34: Redpull (module)

....

Finished in 0.04 seconds
5 tests, 1 failure
```
