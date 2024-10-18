# Paradex

Ecto fragments for [ParadeDB](https://www.paradedb.com/), currently under active development.

## Installation

Add `:paradex` to your list of dependencies in `mix.exs`:

<!-- BEGIN: VERSION -->
```elixir
def deps do
  [
    {:paradex, "~> 0.0.3"}
  ]
end
```
<!-- END: VERSION -->

Documentation is available on [HexDocs](https://hexdocs.pm/paradex/readme.html) and may also be generated with [ExDoc](https://github.com/elixir-lang/ex_doc).

## Usage

* Create your [Ecto schema](https://github.com/Moosieus/paradex/blob/main/test/support/paradex_app/call.ex).
* Create a [search index](https://docs.paradedb.com/documentation/indexing/create_index) in your [migrations](https://github.com/Moosieus/paradex/blob/main/priv/repo/migrations/20241013014316_setup.exs).
* Run search queries.

```elixir
import Ecto.Query
import Paradex

alias MyApp.Call
alias MyApp.Repo

from(
  c in Call,
  where: c.transcript ~> "bus"
)
|> Repo.all()
```

More examples are available in the [API docs](https://hexdocs.pm/paradex/Paradex.html).

## Roadmap/Todo

* Implement CI/CD testing on GitHub and toggle squash merges.
