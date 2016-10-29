Exercise 1
==========

Monitor the process you created in the previous exercise and restart it if it
crashes. It is ok to call the function that detects the crash and restarts the
process yourself. Explore and try different things in iex.

Send it some messages, make it crash and verify that it restarts and accepts
messages again.

```elixir
pid = spawn &CatFinder.run/0

send(pid, {"dc", "goat"})
# {"dc", "goat"}
# iex(373)>
# 10:41:05.350 [error] Process #PID<0.1587.0> raised an exception
# ** (File.Error) could not read file "/tmp/cats/dc/goat.cat": no such file or directory
#     (elixir) lib/file.ex:244: File.read!/1
#     iex:377: CatFinder.run/0
```

```elixir
# TODO: work through solution
```

[Answer](https://gist.github.com/brweber2/ac0a42d667210451b65231a151ee1ebc)
