Task Exercise
=============

Exercise
--------

Create your own sleep function that can sleep for n secs.
Don't forget to wait longer than that. Have it return it's own pid or :ok

```elixir
defmodule Sleepy do
  def sleep(num) do
    :time.sleep(num)
    self()
  end
end

t = Task.async(fn -> Foo.sleep(15000) end)
IO.inspect Task.await(t, 20000)
```

[Answer](https://gist.github.com/MonkeyIsNull/7deb099da777178068e0)

Exercise
--------

Create 5 files /tmp/t1 /tmp/t2 /tmp/t3 /tmp/t4 /tmp/5. Put something in each
file.

Write a program that launches 5 different tasks, each one takes a
function that reads one of the numbered files.

You might need to use the format Task.async(mod, fun, args)

Hint: recursion and map would be helpful
Hint2: map is your friend

```shell
for i in 1 2 3 4 5; do
  echo "This is file #$i" > /tmp/$i
done
```

```elixir

```

[Answer](https://gist.github.com/MonkeyIsNull/3cb5afcb8cfe00c63f5c)

Bonus Exercise
--------------
Using the same template for the progrgam above, grab the
lib [reddhl](https://hex.pm/packages/reddhl) Launch 5 different Tasks, await
their output and dump it. Hint: Not too unlike previous exercise

```elixir

```

[Answer](https://gist.github.com/MonkeyIsNull/13aec9eac86489db15f2)

Agent Exercise
==============

Exercises
---------
* Create a cat store. Start the store with a default cat in it.
* Create a function that adds a cat
* Create a function that shows a cat
* Create a function that removes a cat

```elixir

```

[Answer](https://gist.github.com/MonkeyIsNull/d70bf3cc15cfea961e2a)

Bonus Exercise
--------------

Implement finding a cat by name

```elixir

```

[Answer](https://gist.github.com/MonkeyIsNull/afd0c270da25a31c822f65646cdfc1e3)

Homework Exercise
-----------------

Read https://howistart.org/posts/elixir/1
