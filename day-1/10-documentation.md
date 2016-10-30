Exercise 1
==========

* Create a new mix project and add module documentation to it. Generate the html
  files.

```ex
# mix-exercises/redpull/lib/redpull.ex L1-L16

defmodule Redpull do
  @moduledoc "An example module."

  @doc """
  Prints a greeting to standard output.
  """

  def main(_) do
    IO.puts "Escript!"
  end

  @spec minus(integer, integer) :: integer
  defp minus(a, b) do
    a - b
  end
end
```

Exercise 2
==========

* Add function documentation to the mix project and generate the updated html
  files

  -- run mix docs to generate documentation, mix hex.docs to publish them to hex
  ```shell
  mix docs
  ```

  ```exs
  # mix-exercises/redpull/mix.exs L30-L34

    defp deps do
      [
        {:ex_doc, "~> 0.14", only: :dev}
      ]
    end
  ```

  ```
    redpull master % mix docs
    ==> earmark
    Compiling 3 files (.erl)
    Compiling 19 files (.ex)
    Generated earmark app
    ==> ex_doc
    Compiling 14 files (.ex)
    Generated ex_doc app
    ==> redpull
    Compiling 2 files (.ex)
    warning: function minus/2 is unused
      lib/redpull.ex:13

    Generated redpull app
    Docs successfully generated.
    View them at "doc/index.html".
  ```

[Answer](https://gist.github.com/brweber2/9c888641bdb4892cf4c65683164ef527)
