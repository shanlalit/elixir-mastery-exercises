Exercise 1
==========

* Create a new mix project called 'redpull'

```shell
mix new redpull
```

Exercise 2
==========

* Compile the project and identify the files that were created

```shell
mix compile
```

Exercise 3
==========

* Run the tests. What does the dot mean?

```
redpull % mix test
.

Finished in 0.02 seconds
1 test, 0 failures

Randomized with seed 361756
```

Each dot represents a passed test.

```
redpull master % mix test


  1) test the truth (RedpullTest)
     test/redpull_test.exs:5
     Assertion with == failed
     code: 1 + 3 == 2
     lhs:  4
     rhs:  2
     stacktrace:
       test/redpull_test.exs:6: (test)
```

NB: Color-coded output is trivially easy in Elixir
Standard library provides `ANSI` something or other

Exercise 4
==========

* Make your own Hello World mix task

```ex
# mix-exercises/redpull/lib/mix/tasks/greeting.ex L1-L9

defmodule Mix.Tasks.Greeting do
  use Mix.Task

  @shortdoc "Greets you politely because courtesy counts."

  def run(_) do
    IO.puts("hello world!")
  end
end
```

Exercise 5 (BONUS)
==================

* Build an escript and run it
```exs
# mix-exercises/redpull/mix.exs L10

     escript: [main_module: Redpull],
```
```ex
# mix-exercises/redpull/lib/redpull.ex L1-L5

defmodule Redpull do
  def main(_) do
    IO.puts "Escript!"
  end
end
```

```shell
redpull master % mix escript.build
Compiling 1 file (.ex)
Generated escript redpull with MIX_ENV=dev

redpull master % escript redpull
Escript!
```
