Exercise 1
==========

Run `elixir cats.exs` to make a directory structure that looks like this:

```
/tmp/cats/virginia/felix.cat
/tmp/cats/virginia/angel.cat
/tmp/cats/virginia/midnight.cat
/tmp/cats/maryland/pepper.cat
/tmp/cats/maryland/oreo.cat
/tmp/cats/dc/tiger.cat
/tmp/cats/dc/garfield.cat
/tmp/cats/dc/misty.cat
```

Start a process that looks for "cats" (Cats are files...) in a
"state" (States are directories).

Whenever a message arrives looking for a cat, return the content of the file
matching the name of the cat.

Send the process a message with a valid cat name.
Send the process a message with an invalid cat name.

Assume the file exists and let it "crash" if it does not.


```elixir
defmodule CatFinder do
  @base_dir "/tmp/cats/"

  def run do
    receive do
      {:quit} ->
        IO.puts "goodbye"
      {state, cat} ->
        IO.inspect find_cat(state, cat)
        run
    end
  end

  def find_cat(state, cat) do
    [@base_dir, String.downcase(state), String.downcase(cat) <> ".cat"]
    |> Path.join()
    |> File.read!()
  end
end

pid = spawn &CatFinder.run/0
# #PID<0.1587.0>

send(pid, {"dc", "garfield"})
# {"dc", "garfield"}

# "[name: \"Garfield\", age: 3]\n"
```

[Answer](https://gist.github.com/brweber2/56e9a991b023f8b46518e6389b79ce44)
