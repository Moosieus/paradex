defmodule ParadexTest do
  use Paradex.SQLCase
  use Paradex.DataCase

  import Ecto.Query
  import Paradex

  alias ParadexApp.Repo
  alias ParadexApp.Call

  test "~>/2 generates a query" do
    query =
      from(
        c in Call,
        select: count(),
        where: c.transcript ~> "bus"
      )

    sql = ~s{SELECT count(*) FROM "calls" AS c0 WHERE (c0."transcript" @@@ 'bus')}

    assert_sql(query, sql)

    assert Repo.all(query) == [215]
  end

  test "snippet/1 generates a query" do
    query =
      from(
        c in Call,
        select: {c, snippet(c.transcript)},
        where: c.transcript ~> "mechanic"
      )

    sql =
      ~s{SELECT c0."id", paradedb.snippet(c0."transcript", start_tag => '<b>', end_tag => '</b>', max_num_chars => 150) FROM "calls" AS c0 WHERE (c0."transcript" @@@ 'mechanic')}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "all/0 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> all()
      )

    sql = ~s[SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.all())]

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "boost/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> boost(2.0, parse("transcript:bus"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.boost(2.0::float::real, paradedb.parse('transcript:bus')))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "const_score/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> const_score(2.0, parse("transcript:bus"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.const_score(2.0::float::real, paradedb.parse('transcript:bus')))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "disjunction_max/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where:
          c.id
          ~> disjunction_max(
            [
              parse("transcript:bus"),
              int4range("call_length", 10, nil, "[)")
            ],
            2.0
          )
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.disjunction_max(ARRAY[paradedb.parse('transcript:bus'),paradedb.range(field => 'call_length', range => int4range(10, NULL, '[)'))], 2.0::float::real))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "empty/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> empty()
      )

    sql =
      ~s[SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.empty())]

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "exists/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> pdb_exists("call_length")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.exists('call_length'))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "fuzzy_term/5 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> fuzzy_term("transcript", "bus", 2, true, false)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.fuzzy_term('transcript', 'bus', 2, TRUE, FALSE))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "fuzzy_phrase/6 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> fuzzy_phrase("transcript", "bus sotp", 1, false, false, false)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.fuzzy_phrase('transcript', 'bus sotp', 1, FALSE, FALSE, FALSE))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  # test "more_like_this/?" do
  #
  # end

  test "parse/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> parse("transcript:bus")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.parse('transcript:bus'))}

    assert_sql(query, sql)

    assert Repo.exists?(query), "expected to execute successfully and return true"
  end

  test "phrase/3 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> phrase("transcript", ["bus", "stop"], 1)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.phrase('transcript', ARRAY['bus','stop'], 1))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "phrase_prefix/2 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> phrase_prefix("transcript", ["en"])
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.phrase_prefix('transcript', ARRAY['en'], 0))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "int4range/4 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> int4range("call_length", 5, nil, "[)")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'call_length', range => int4range(5, NULL, '[)')))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "int8range/4 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> int8range("call_length", 5, nil, "[)")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'call_length', range => int8range(5, NULL, '[)')))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "daterange/4 generates a query" do
    start = ~D[2024-10-09]
    stop = ~D[2024-10-10]

    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> daterange("start_time", ^start, ^stop, "[]")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'start_time', range => daterange($1, $2, '[]')))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "tsrange/4 generates a query" do
    from = ~U[2024-10-09 08:00:00.00Z]

    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> tsrange("start_time", ^from, nil, "[)")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'start_time', range => tsrange($1, NULL, '[)')))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "regex/2 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> regex("transcript", "bus (stop|route)")
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.regex('transcript', 'bus (stop|route)'))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "term/2 generates a query" do
    query =
      from(
        c in Call,
        select: count(),
        where: c.id ~> term("talk_group_id", 144)
      )

    sql =
      ~s{SELECT count(*) FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.term('talk_group_id', 144))}

    assert_sql(query, sql)

    assert Repo.all(query) == [953], "expected to execute successfully"
  end

  test "term_set/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where:
          c.id
          ~> term_set([
            term("talk_group_id", 144),
            term("talk_group_id", 145)
          ])
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.term_set(terms => ARRAY[paradedb.term('talk_group_id', 144),paradedb.term('talk_group_id', 145)]))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "results map to schemas" do
    query =
      from(
        c in Call,
        where: c.id ~> "transcript:mechanical",
        limit: 1
      )

    assert match?(%Call{}, Repo.one!(query))
  end
end
