defmodule Mix.Tasks.Greeting do
  use Mix.Task

  @shortdoc "Greets you politely because courtesy counts."

  def run(_) do
    IO.puts("hello world!")
  end
end
