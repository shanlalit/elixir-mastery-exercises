# Exercise 1
* Write a function in a module that takes a map with :name and prints out the
  value with a "-NG" appended to it since it's the NextGeneration ;)
  -- Ensure it takes only maps that contain the :droid atom which is true

  ```elixir
  defmodule MyMap do
    def upgrade(%{name: name, droid: true}) do
      # %{name: "#{name}-NG", droid: true}
      # Any tradeoffs here?
      %{name: name <> "-NG", droid: true}
    end
  end
  ```

* Write another function (with the same name) with the (almost) same arguments
  that takes any name and returns it if the :droid value is false

  ```elixir
  defmodule MyMap do
    def upgrade(%{name: name, droid: false}) do
      name
    end
  end
  ```

* [Answer](https://gist.github.com/MonkeyIsNull/02b43cd673a228d57fc0)

# Exercise 2
* Write an & function using &1.... and sums 4 values

  ```elixir
  summer = &(&1 + &2 + &3 + &4)
  # #Function<4.52032458/4 in :erl_eval.expr/5>

  summer.(1, 2, 3, 4)
  # 10
  ```

* [Answer](https://gist.github.com/MonkeyIsNull/f1c12df84de6e5156237)

# Exercise 3
* Write an function called greeter that returns a function that takes differing
  types and values and prints out a different response to each. Try a map, a
  three element tuple, an :atom and a string. It should also take a fallthrough
  default value that returns :ok

  ```elixir
  defmodule Greetings do
    def greeter do
      fn(x) ->
        cond do
          is_atom(x) -> :atom
          is_binary(x) -> :string
          is_map(x) -> :map
          is_tuple(x) && ({_a, _b, _c} = x) -> "three-tuple"
          true -> :ok
        end
      end
    end
  end
  ```
* [Answer](https://gist.github.com/MonkeyIsNull/37368f35d6cfa35d1919)

# Exercise 4
* read up on _Enum.reduce_. Inside of iex How can you combine Enum.map and
  Enum.reduce to take a list of numbers, double each of them and then sum them
  up. Try the numbers 1,2,3,4 - that way you'll know the answer (20) and if you
  got it correct

  ```elixir
  nums |> Enum.map_reduce(0, &({ &1 * 2, &2 + &1 * 2 }))
  # {[2, 4, 6, 8], 20}

  nums |> Enum.map(&(&1 * 2)) |> Enum.reduce(0, &(&1 + &2))
  # 20
  ```

* [Answer](https://gist.github.com/MonkeyIsNull/738e0ae9114416ed1f11)
