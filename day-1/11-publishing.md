Publishing a library exercises
==============================

* Create a new mix project. Publish it is hex.pm.

```ex
  # mix.exs

  defp package do
    [# These are the default files included in the package
     name: :postgrex,
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Eric Meadows-Jönsson", "José Valim"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/ericmj/postgrex",
              "Docs" => "http://ericmj.github.io/postgrex/"}]
  end
```

```
$ mix hex.publish
Publishing postgrex v0.4.0
  Dependencies:
    decimal ~> 0.1.0
  Excluded dependencies (not part of the Hex package):
    ex_doc
  Included files:
    lib/postgrex
    lib/postgrex/binary_utils.ex
    lib/postgrex/connection.ex
    lib/postgrex/protocol.ex
    lib/postgrex/records.ex
    lib/postgrex/types.ex
    mix.exs
Proceed? [Yn] Y
Published postgrex v0.4.0
```
