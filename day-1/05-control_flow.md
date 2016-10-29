Conditional Exercises
---------------------

* Create a variable `has_seen_star_wars` and set it to true.

```elixir
has_seen_star_wars = true
```

* Write code that prints "Ready for class" if you have seen at least one Star
  Wars movie (`has_seen_star_wars`).

```elixir
if has_seen_star_wars do
  IO.puts "Ready for class"
end
```

* Flip has_seen_star_wars to false.

```elixir
has_seen_star_wars = !has_seen_star_wars
```

* Write code that prints "Ready for class" if you have seen at least one Star
  Wars movie (`has_seen_star_wars`). Otherwise print "Not ready".

```elixir
if has_seen_star_wars do
  IO.puts "Ready for class"
else
  IO.puts "Not ready"
end

message = if has_seen_star_wars do
            "Ready for class"
          else
            "Not ready for class"
          end

IO.puts(message)
```

* Set the variable `i_am_a_fan` to a `Boolean` based on the if expression.

```elixir
i_am_a_fan = if has_seen_star_wars do
               true
             else
               false
             end
```

* Set the variable inside the if expression. What happens? Why?

```elixir
if has_seen_star_wars do
  i_am_a_fan = true
else
  i_am_a_fan = false
end
```

* Set the variable to the return value of the if expression. What happens? Why?

```elixir
# ??
```

Case Exercises
--------------

* Do the same exercise, but replace 'if' with 'case'.

```elixir
```

* Do the same exercise, but replace 'if' with 'cond'.

```elixir
```

Errors
------

* Write a function that will raise an error depending on the inputs.

```elixir

```

* Call the function and trigger the error.

```elixir
```

* Call the function and do not trigger the error.

```elixir
```

* Add error handling to the function so it does not fail if an error occurs.

```elixir
```

* Write a function that always prints out "Star Wars is awesome" even if it
  raises an error.

```elixir
```

* Write a function that raises an error, handles it and logs the stacktrace in a
  friendly manner.

```elixir
```

[Answer](https://gist.github.com/brweber2/26c834effd8c3c17e19c2009381db514)
