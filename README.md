# Paradex

Ecto fragments for [ParadeDB](https://www.paradedb.com/), currently under active development.

## Installation

Add `:paradex` to your list of dependencies in `mix.exs`:

<!-- BEGIN: VERSION -->
```elixir
def deps do
  [
    {:paradex, "~> 0.0.1"}
  ]
end
```
<!-- END: VERSION -->

Documentation is available on [HexDocs](https://hexdocs.pm/paradex/readme.html) and may also be generated with [ExDoc](https://github.com/elixir-lang/ex_doc).

## Usage

Create your [Ecto schema](https://github.com/Moosieus/paradex/blob/main/test/support/paradex_app/call.ex), create a search index in your [migrations](https://github.com/Moosieus/paradex/blob/main/priv/repo/migrations/20241013014316_setup.exs), and run search queries:
```elixir
import Ecto.Query
import Paradex

alias ParadexApp.Call
alias ParadexApp.Repo

from(
  c in Call,
  where: c.transcript ~> "bus"
)
|> Repo.all()
```

See [the docs](https://hexdocs.pm/paradex/readme.html) for full examples.

## Todo

* Add examples for `range_term/2` and `boolean/3`
* Add test coverage for `range_term/2` and `boolean/3`
* Implement [`more_like_this`](https://docs.paradedb.com/documentation/advanced/specialized/more_like_this).
* Implement facets and aggregations (currently enterprise).
* Implement hybrid search or add a guide for users to do so themselves.

## Testing

```sh
mise trust && mise install
docker compose up
MIX_ENV=test mix setup
psql -h 127.0.0.1 -U postgres paradex_test -f "paradex_test_data.sql"
```
