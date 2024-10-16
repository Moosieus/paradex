# Testing

```sh
mise trust && mise install
docker compose up -d
MIX_ENV=test mix setup
psql -h 127.0.0.1 -U postgres paradex_test -f "paradex_test_data.sql"
MIX_ENV=test mix test
```
