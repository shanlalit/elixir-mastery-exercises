Data
----

Use the following data to answer the questions in this section

```elixir
characters = [
  %{name: "Han",        type: :human,   rebel: true,    weight: 185},
  %{name: "Jabba",      type: :hutt,    rebel: false,   weight: 2200},
  %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
  %{name: "Chewie2",    type: :wookie,  rebel: true,    weight: 350},
  %{name: "r2d2",       type: :droid,   rebel: true,    weight: 250},
  %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
  %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175},
]
```

Exercises
---------

**NB: There is more than one correct answer for all of these!**

### Exercise 1

* In one line of code, set a variable called `wookie_name` to the name of the
  wookie character

  ```elixir
  [wookie_name | _] = Enum.filter_map(characters, &(&1.type == :wookie), &(&1.name))
  wookie_name
  ```

  ```elixir
  [_, %{name: hutt_name}, %{name: wookie_name} | _] = characters

  wookie_name
  # "Chewie"

  hutt_name
  # "Jabba"
  ```

### Exercise 2

* In one line of code, set a variable called 'weight' to how much Han weighs

  ```elixir
  %{weight: weight} = Enum.at(characters, 0)
  weight
  # 185
  ```

  ```elixir
  [%{weight: weight} | _] = characters
  weight
  # 185
  ```

Advanced Exercises
------------------

We haven't covered all of this yet, you'll likely need to read documentation.

### Exercise 3

* In one line of code, create a list of the names of the humans

  ```elixir
  characters |> Enum.filter_map(&(&1.type == :human), &(&1.name))
  ```

  ```elixir
  for %{type: :human, name: name} <- characters, do: name
  ```

### Exercise 4

* In one line of code, create a list of all the humans that weigh less than 180
  lbs.

  ```elixir
  characters |> Enum.filter_map(&(&1.type == :human && &1.weight < 180), &(&1.name))
  ```

  ```elixir
  for c = %{type: :human} <- characters, c.weight < 180, do: c.name, into: []
  ```

[Answer](https://gist.github.com/brweber2/340a2f53c00a7d38c527313c0642398a)
