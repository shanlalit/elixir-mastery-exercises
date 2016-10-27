Exercise 1
==========

Given the data below, write a function that pulls the `_uniq_` first word items
out of the fifth field. You should get back

```
["Open", "Asset", "Core", "Xcode", "_launchservicesd"]
```

Data
----

```
log = """
admin:*:231:-2:Open Directory Kerberos Admin Service:/var/empty:/usr/bin/false
_krb_changepw:*:232:-2:Open Directory Kerberos Change Password Service:/var/empty:/usr/bin/false
_krb_kerberos:*:233:-2:Open Directory Kerberos:/var/empty:/usr/bin/false
_krb_anonymous:*:234:-2:Open Directory Kerberos Anonymous:/var/empty:/usr/bin/false
_assetcache:*:235:235:Asset Cache Service:/var/empty:/usr/bin/false
_coremediaiod:*:236:236:Core Media IO Daemon:/var/empty:/usr/bin/false
_xcsbuildagent:*:237:237:Xcode Server Build Agent:/var/empty:/usr/bin/false
_xcscredserver:*:238:238:Xcode Server Credential Server:/var/empty:/usr/bin/false
_launchservicesd:*:239:239:_launchservicesd:/var/empty:/usr/bin/false
"""
```

Solution
--------

```elixir
defmodule DataParser do
  def unique_first_of_fifth(data) do
    data
      |> String.trim_trailing("\n")
      |> list_of_lists
      |> Enum.map(&first_word_of_fifth_field/1)
      |> Enum.dedup
  end

  defp list_of_lists(data) do
    data
      |> String.split("\n")
      |> Enum.map(&(String.split(&1, ":")))
  end

  defp first_word_of_fifth_field(list) do
    list
      |> Enum.at(4)
      |> String.split(" ")
      |> List.first
  end
end

DataParser.unique_first_of_fifth(data)
# ["Open", "Asset", "Core", "Xcode", "_launchservicesd"]
```

[answer](https://github.com/MonkeyIsNull/fpexer/blob/master/test/fpexer_test.exs)

Exercise 2
==========

Given the following data, write a function called `find_by_type`. Use it to find
all droids, then use it find all humans. Use recursion to do this.

Data
----

```elixir
characters = [
  %{name: "Han",        type: :human,   rebel: true,    weight: 185},
  %{name: "Jabba",      type: :hutt,    rebel: false,   weight: 2200},
  %{name: "Chewie",     type: :wookie,  rebel: true,    weight: 350},
  %{name: "r2d2",       type: :droid,   rebel: true,    weight: 250},
  %{name: "Luke",       type: :human,   rebel: true,    weight: 140},
  %{name: "Boba Fett",  type: :human,   rebel: false,   weight: 175},
]
```

Solution
--------

```elixir
defmodule DroidFinder do
  def find_by_type(nil, _, acc), do: acc

  def find_by_type(characters, type, acc) do
    [h | tail] = characters

    acc = if h.type == type do
            [h | acc]
          end

    find_by_type(tail, type, acc)
  end
end
```

[answer](https://github.com/MonkeyIsNull/fpexer/blob/master/lib/fpexer.ex)


Exercise 3
============

Without looking at the slides, code the implementation for map, filter and
reduce. Wikipedia has implementations that are close so you can use those if
you're stuck. Reduce is also called fold. Answers: slides

```elixir
```
