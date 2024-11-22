# Paradex

Ecto fragments for [ParadeDB](https://www.paradedb.com/) versions `0.11.x - 0.13.x`.

## Installation

Add `:paradex` to your list of dependencies in `mix.exs`:

<!-- BEGIN: VERSION -->
```elixir
def deps do
  [
    {:paradex, "~> 0.3.2"}
  ]
end
```
<!-- END: VERSION -->

Documentation is available on [HexDocs](https://hexdocs.pm/paradex/readme.html) and may also be generated with [ExDoc](https://github.com/elixir-lang/ex_doc).

## Usage

You may install ParadeDB via [Docker](https://docs.paradedb.com/documentation/getting-started/install), or by [loading the extensions](https://docs.paradedb.com/deploy/self-hosted/extensions) into an existing Postgres database.

Create `lib/postgrex_types.ex` with the contents below. You may omit `Pgvector.extensions()` if you aren't working with vectors:

```elixir
Postgrex.Types.define(
  ParadexApp.PostgrexTypes,
  Pgvector.extensions() ++ Paradex.extensions() ++ Ecto.Adapters.Postgres.extensions(),
  []
)
```

Add the following to `config/config.exs`:
```elixir
config :my_app, MyApp.Repo, types: MyApp.PostgrexTypes
```


Create your [Ecto schema](https://github.com/Moosieus/paradex/blob/main/test/support/paradex_app/call.ex) and a [search index](https://docs.paradedb.com/documentation/indexing/create_index) in your [migrations](https://github.com/Moosieus/paradex/blob/main/priv/repo/migrations/20241013014316_setup.exs).

Once complete, you're ready to run search queries:

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
