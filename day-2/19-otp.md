Exercise 1
==========

* Make an OTP Catstore GenServer that starts with a call to new_store

* Implement add/remove/list/close
  * Note: this is mysteriously like the examples in the slides

```elixir
defmodule CatStore
  use GenServer

  def handle_call(:list, _from, current_droids) do
    {:reply, current_droids, current_droids}
  end
end
```

[Answer](https://gist.github.com/MonkeyIsNull/4ceaa2f72e2f9c9c177e)
