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
i_am_a_fan = %{ok: true}

case i_am_a_fan do
  %{ok: val} -> "Ready for class? #{val}"
  %{nah: val} -> "Ready for class? #{!val}"
  _ -> "Whatever man"
end
```

* Do the same exercise, but replace 'if' with 'cond'.

```elixir
i_am_a_fan = true

cond do
  (i_am_a_fan == true) -> "Ready for class? #{i_am_a_fan}"
  (i_am_a_fan == false) -> "Ready for class? #{i_am_a_fan}"
end
```

Errors
------

* Write a function that will raise an error depending on the inputs.

```elixir
defmodule Erroneous do
  def divide(a, b) do
    a / b
  end
end
```

* Call the function and trigger the error.

```elixir
Erroneous.divide(5, 0)
```

* Call the function with inputs that don't trigger the error.

```elixir
Erroneous.divide(10, 2)
```

* Add error handling to the function so it does not fail if an error occurs.

```elixir
defmodule Erroneous do
  def divide(a, b) do
    try do
      a / b
    rescue e in [ArithmeticError] ->
      IO.puts "Can't divide by zero"
      IO.inspect e
    end
  end
end

Erroneous.divide(5, 0)

# Can't divide by zero
# %ArithmeticError{message: "bad argument in arithmetic expression"}
```

* Write a function that always prints out "Star Wars is awesome" even if it
  raises an error.

```elixir
defmodule Erroneous do
  def divide(a, b) do
    try do
      a / b
    after
      IO.puts "Star Wars is awesome"
    end
  end
end

Erroneous.divide(5, 0)
```

* Write a function that raises an error, handles it and logs the stacktrace in a
  friendly manner.

```elixir
require Logger
defmodule Erroneous do
  def divide(a, b) do
    try do
      a / b
    rescue e in [ArithmeticError] ->
      IO.puts "Can't divide by zero, here's a stacktrace."
      System.stacktrace |> Exception.format_stacktrace |> Logger.error
    after
      IO.puts "Star Wars is awesome"
    end
  end
end

Erroneous.divide(5, 0)
```

[Answer](https://gist.github.com/brweber2/26c834effd8c3c17e19c2009381db514)
