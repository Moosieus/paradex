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

  test "field names are successfully parameterized" do
    field = "transcript"

    query =
      from(
        c in Call,
        select: count(),
        where: c.id ~> parse_with_field(^field, "bus")
      )

    sql =
      ~s[SELECT count(*) FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.parse_with_field($1::paradedb.fieldname, 'bus', lenient => FALSE, conjunction_mode => TRUE))]

    assert_sql(query, sql)

    assert Repo.all(query) == [215]
  end

  test "snippet/1 generates a query" do
    query =
      from(
        c in Call,
        select: {c.id, snippet(c.transcript)},
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

  test "boolean/1 generates a query with all keys" do
    x = "transcript:station"

    query =
      from(
        c in Call,
        select: count(),
        where:
          c.id
          ~> boolean(
            must: [parse("transcript:transfer")],
            should: [parse("transcript:bus")],
            must_not: [parse(^x)]
          )
      )

    sql =
      ~s{SELECT count(*) FROM \"calls\" AS c0 WHERE (c0.\"id\" @@@ paradedb.boolean(must => ARRAY[paradedb.parse('transcript:transfer', lenient => FALSE, conjunction_mode => TRUE)], should => ARRAY[paradedb.parse('transcript:bus', lenient => FALSE, conjunction_mode => TRUE)], must_not => ARRAY[paradedb.parse($1, lenient => FALSE, conjunction_mode => TRUE)]))}

    assert_sql(query, sql)

    assert Repo.all(query) == [3]
  end

  test "boolean/1 generates a query with partial keys" do
    x = "transcript:station"

    query =
      from(
        c in Call,
        select: count(),
        where:
          c.id
          ~> boolean(
            must: [parse("transcript:transfer")],
            must_not: [parse(^x)]
          )
      )

    sql =
      ~s|SELECT count(*) FROM \"calls\" AS c0 WHERE (c0.\"id\" @@@ paradedb.boolean(must => ARRAY[paradedb.parse('transcript:transfer', lenient => FALSE, conjunction_mode => TRUE)], should => '{}', must_not => ARRAY[paradedb.parse($1, lenient => FALSE, conjunction_mode => TRUE)]))|

    assert_sql(query, sql)

    assert Repo.all(query) == [3]
  end

  test "boost/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> boost(2.0, parse("transcript:bus"))
      )

    sql =
      ~s{SELECT c0.\"id\" FROM \"calls\" AS c0 WHERE (c0.\"id\" @@@ paradedb.boost(2.0::float::real, paradedb.parse('transcript:bus', lenient => FALSE, conjunction_mode => TRUE)))}

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
      ~s{SELECT c0.\"id\" FROM \"calls\" AS c0 WHERE (c0.\"id\" @@@ paradedb.const_score(2.0::float::real, paradedb.parse('transcript:bus', lenient => FALSE, conjunction_mode => TRUE)))}

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
          ~> disjunction_max([
            parse("transcript:bus"),
            int4range("call_length", 10, nil, "[)")
          ])
      )

    sql =
      ~s{SELECT c0.\"id\" FROM \"calls\" AS c0 WHERE (c0.\"id\" @@@ paradedb.disjunction_max(ARRAY[paradedb.parse('transcript:bus', lenient => FALSE, conjunction_mode => TRUE),paradedb.range(field => 'call_length'::paradedb.fieldname, range => int4range(10, NULL, '[)'))], 0.0::float::real))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.exists('call_length'::paradedb.fieldname))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.fuzzy_term('transcript'::paradedb.fieldname, 'bus', 2, TRUE, FALSE))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "match/6 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> match("transcript", "bus sotp", 1, false)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.match('transcript'::paradedb.fieldname, 'bus sotp', distance => 1, transposition_cost_one => FALSE, prefix => FALSE, conjunction_mode => FALSE))}


    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  # test "more_like_this/?" do
  #
  # end

  test "parse/3 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> parse("transcript:bus", false, false)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.parse('transcript:bus', lenient => FALSE, conjunction_mode => FALSE))}

    assert_sql(query, sql)

    assert Repo.exists?(query), "expected to execute successfully and return true"
  end

  test "parse_with_field/4 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> parse_with_field("transcript", "traffic congestion", true, false)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.parse_with_field('transcript'::paradedb.fieldname, 'traffic congestion', lenient => TRUE, conjunction_mode => FALSE))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully and return true"
  end

  test "phrase/3 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: c.id ~> phrase("transcript", ["bus", "stop"], 1)
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.phrase('transcript'::paradedb.fieldname, ARRAY['bus','stop'], 1))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.phrase_prefix('transcript'::paradedb.fieldname, ARRAY['en'], 0))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'call_length'::paradedb.fieldname, range => int4range(5, NULL, '[)')))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'call_length'::paradedb.fieldname, range => int8range(5, NULL, '[)')))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'start_time'::paradedb.fieldname, range => daterange($1, $2, '[]')))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'start_time'::paradedb.fieldname, range => tsrange($1, NULL, '[)')))}

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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.regex('transcript'::paradedb.fieldname, 'bus (stop|route)'))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "term/2 generates a query" do
    query =
      from(
        c in Call,
        select: count(),
        where: c.id ~> term("talkgroup_num", 7695)
      )

    sql =
      ~s{SELECT count(*) FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.term('talkgroup_num'::paradedb.fieldname, 7695))}

    assert_sql(query, sql)

    assert Repo.all(query) == [249]
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
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.term_set(terms => ARRAY[paradedb.term('talk_group_id'::paradedb.fieldname, 144),paradedb.term('talk_group_id'::paradedb.fieldname, 145)]))}

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
