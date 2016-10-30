Releases exercises
==================

* Generate a new mix project. Create a release for the project.
  Install it and run it.

  ```
  mix new to_be_released
  ```

  ```ex
  defp deps do
    [
      {:exrm, "~> 1.0"},
    ]
  end
  ```

  ```
  mix deps.get
  mix compile


  ```

  ```
  % MIX_ENV=prod mix compile
  Compiling 1 file (.ex)
  Generated to_be_released app

  % MIX_ENV=prod mix release
  Building release with MIX_ENV=prod.
  ==> The release for to_be_released-0.1.0 is ready!
  ==> You can boot a console running your release with `$ rel/to_be_released/bin/to_be_released console`
  ```

Advanced
========

* Upgrade your release to a new version without stopping the running process.

[Answer](https://gist.github.com/brweber2/f49330dffb49476dd4bd30d253b86fce)
