# Paradex

Ecto fragments for [ParadeDB](https://www.paradedb.com/), currently under active development.

## Todo

- [ ] Implement full suite of tests
- [ ] Implement `0.11.0` stuff once it drops

<!-- 
## Installation

Add `:paradex` to your list of dependencies in `mix.exs`:
-->

<!-- BEGIN: VERSION -->
<!--
```elixir
def deps do
  [
    {:paradex, "~> 0.1.0"}
  ]
end
```
-->
<!-- END: VERSION -->

<!--
Documentation and usage is available on [HexDocs](https://hexdocs.pm/paradex/readme.html) and may also be generated with [ExDoc](https://github.com/elixir-lang/ex_doc).
-->

## Testing

```sh
mise trust && mise install
docker compose up
MIX_ENV=test mix setup
psql -h 127.0.0.1 -U postgres paradex_test -f "paradex_test_data.sql"
```
