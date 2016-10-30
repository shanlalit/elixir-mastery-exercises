Data
====

Use this code and data to answer the questions:

```elixir
defmodule Millenium.Falcon do
  def rebel?(c = %{rebel: true}) do
    c.type != :droid
  end

  def rebel?(_), do: false

  def fill_ship(characters) do
    characters
    |> Enum.map(&(&1.name))
    |> Enum.join(",")
  end
end

characters = [
  %{name: "Han",        type: :human,   rebel: true,    weight: 185},
  %{name: "Jabba",      type: :hutt,    rebel: false,   weight: 2200},
  %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
  %{name: "r2d2",       type: :droid,   rebel: true,    weight: 250},
  %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
  %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175},
]
```

Exercise 1
==========

* Create a list of all the rebel scum

```elixir
characters |> Enum.filter(&Millenium.Falcon.rebel?/1)
```

Exercise 2
==========

* Fill the Millenium Falcon with all the rebels

```elixir
characters |> Enum.filter(&Millenium.Falcon.rebel?/1) |> Millenium.Falcon.fill_ship
```

Exercise 3
==========

* How much do all the humans weigh?

```elixir
characters |> Enum.filter_map(&Millenium.Falcon.rebel?/1, &(&1.weight))
```

Exercise 4 (BONUS)
==================

* If the Millenium Falcon can hold 1000 pounds, what is the largest set of
  characters that can fit on the ship without going over the weight limit?

```elixir
defmodule MilleniumFalcon do
  @weight_limit 1000

  # concise solution
  def solution(characters) do
    reducer = fn (c, acc) ->
      if c.weight + acc <= 1000 do
        {[c], c.weight + acc}
      else
        {[], acc}
      end
    end

    characters
    |> Enum.sort(&(&1.weight >= &2.weight))
    |> Enum.flat_map_reduce(0, reducer)
    |> elem(0)
  end

  def fill_ship(characters) do
    characters
    |> sort_descending_by_weight
    |> Enum.reduce([], &add_if_within_limit/2)
  end

  def sort_descending_by_weight(characters) do
    characters
    |> Enum.sort(&(&1.weight >= &2.weight))
  end

  def total_weight(characters) do
    characters
    |> Enum.map(&(&1.weight))
    |> Enum.sum
  end

  def add_if_within_limit(char, list) do
    if char.weight + total_weight(list) <= @weight_limit do
      [char | list]
    else
      list
    end
  end
end
```

[Answer](https://gist.github.com/brweber2/5d594842ac81d55d92ee6b44510bfc45)
