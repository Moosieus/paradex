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

Create your [Ecto schema](./test/support/paradex_app/call.ex), create a search index in your [migrations](./priv/repo/migrations/20241013014316_setup.exs), and run queries:
```elixir
import Ecto.Query
import Paradex

alias ParadexApp.Call
alias ParadexApp.Repo

from(
  c in Call,
  where: c.transcript, ~> "transcript:bus"
) |> Repo.all()
```

See [the docs](https://hexdocs.pm/paradex/readme.html) for full examples.

## Todo

- [ ] Add examples for each macro.
- [ ] Review defaults and calling convention.
- [ ] Implement [`more_like_this`](https://docs.paradedb.com/documentation/advanced/specialized/more_like_this).
- [ ] Implement faceting (currently enterprise).
- [ ] Implement aggregations (currently enterprise).
- [ ] Determine whether or not this package or users should implement hybrid search.

## Testing

```sh
mise trust && mise install
docker compose up
MIX_ENV=test mix setup
psql -h 127.0.0.1 -U postgres paradex_test -f "paradex_test_data.sql"
```
