## Reading Excercises
* Spend some time in iex looking at the functions for
  Map, List, Keyword. For example, type in Map and then ```.```
  and then hit tab. Read the doc for some eg: ```h List.delete```

## List Exercises
* Create a list with six star wars characters

```elixir
list1 = [
  [first: "Princess", last: "Leia"],
  [first: "Han", last: "Solo"],
  [first: "Luke", last: "Skywalker"],
  [first: "Darth", last: "Vader"],
  [first: "Obi-Wan", last: "Kenobi"],
  [first: "Chewbaccs", last: "Gottlieb"]
]
```

* Get the third item out of the list

```elixir
list1 |> Enum.at(2)
```

* Create another list with three characters

```elixir
list2 = [
  [first: "Anakin", last: "Skywalker"],
  [first: "Darth", last: "Maul"],
  [first: "Natalie", last: "Portman"],
]
```
* Create a third list that contains both previous lists

```elixir
list3 = list1 ++ list2
```

* Delete the seventh character

```elixir
list3 |> List.delete(6)
```

* Add one more character to the list
```elixir
jake = [first: "Jake", last: "Romer"]
list4 = [jake | list3]
```

* use 'in' to check that a character exists

```elixir
jake in list4
# true
```

## Map exercises
* Create a map with at least two key/value pairs.
  Some suggested ones are :name, :side.
  alliance should be :rebel or :imperial

  ```elixir
  characters = %{
    luke: %{name: "Luke", side: :rebel},
    vader: %{name: "Vader", side: :imperial}
  }
  ```

* Print out the name and the side values

  ```elixir
  characters |> Map.values |> Enum.map(&(&1.name))
  # ["Luke", "Vader"]
  ```

  ```elixir
  characters |> Map.values |> Enum.map(&(&1.side))
  # [:rebel, :imperial]
  ```

* Add a weight to each character

  ```elixir
  # TODO
  ```

* Update the alliance to its opposite

  ```elixir
  # TODO
  ```

* Create a LOM: list of maps of three characters

  ```elixir
  details = characters |> Map.values
  # [%{name: "Luke", side: :rebel}, %{name: "Vader", side: :imperial}]
  ```

* Update or replace the second item in the list  with
  'Jabba the Hutt' and :scum or :criminal as the side

  ```elixir
  details |> List.replace_at(1, %{name: "Jabba the Hutt", side: :criminal})
  # [%{name: "Luke", side: :rebel}, %{name: "Jabba the Hutt", side: :criminal}]
  ```

* [Answers](https://gist.github.com/MonkeyIsNull/8b26a6a05ba0d54b13cf)
