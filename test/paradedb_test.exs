defmodule ParadedbTest do
  use ParadeDB.SQLCase
  use ParadeDB.DataCase

  import Ecto.Query

  require ParadeDB, as: PDB

  alias ParadeDBApp.Repo
  alias ParadeDBApp.Call

  test "search/2 generates a query" do
    query =
      from(
        c in Call,
        select: count(),
        where: PDB.search(c.id, "transcript:bus")
      )

    sql = ~s{SELECT count(*) FROM "calls" AS c0 WHERE (c0."id" @@@ 'transcript:bus')}

    assert_sql(query, sql)

    assert Repo.all(query) == [215]
  end

  # Won't compile
  # test "all/0 generates a query" do
  #   query = from(
  #     c in Call,
  #     select: c.id,
  #     where: PDB.search(c.id, PDB.all())
  #   )

  #   sql = ~s[SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.all())]

  #   assert_sql(query, sql)
  # end

  test "boost/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.boost(PDB.parse("transcript:bus"), 2.0))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.boost(query => paradedb.parse('transcript:bus'::varchar), boost => 2.0::float::real))}

    assert_sql(query, sql)

    # TODO: test scores once 0.11.0 drops
  end

  test "const_score/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.const_score(PDB.parse("transcript:bus"), 2.0))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.const_score(query => paradedb.parse('transcript:bus'::varchar), score => 2.0::float::real))}

    assert_sql(query, sql)

    # TODO: test scores once 0.11.0 drops
  end

  test "disjunction_max/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where:
          PDB.search(
            c.id,
            PDB.disjunction_max(
              [
                PDB.parse("transcript:bus"),
                PDB.int4range("call_length", 10, nil, "[)")
              ],
              2.0
            )
          )
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.disjunction_max(disjuncts => ARRAY[paradedb.parse('transcript:bus'::varchar),paradedb.range(field => 'call_length'::varchar, range => int4range(10, NULL, '[)'::varchar))], tie_breaker => 2.0::float::real))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  # Won't compile
  # test "empty/1 generates a query" do
  #   query = from(
  #     c in Call,
  #     select: c.id,
  #     where: PDB.search(c.id, PDB.empty())
  #   )

  #   sql =
  #     ~s[SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.empty())]

  #   assert_sql(query, sql)
  # end

  test "exists/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.exists("call_length"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.exists(field => 'call_length'::varchar))}

    assert_sql(query, sql)

    assert Repo.all(query), "expected to execute successfully"
  end

  test "fuzzy_term/5 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.fuzzy_term("transcript", "bus", 2, true, false))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.fuzzy_term(field => 'transcript'::varchar, value => 'bus'::varchar, distance => 2, transpose_cost_one => TRUE, prefix => FALSE))}

    assert_sql(query, sql)

    # transpose_cost_one seems broken
    # assert Repo.all(query), "expected to execute successfully"
  end

  test "fuzzy_phrase/6 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where:
          PDB.search(c.id, PDB.fuzzy_phrase("transcript", "bus sotp", 1, false, false, false))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.fuzzy_phrase(field => 'transcript'::varchar, value => 'bus sotp'::varchar, distance => 1, transpose_cost_one => FALSE, prefix => FALSE, match_all_terms => FALSE))}

    assert_sql(query, sql)
  end

  # test "more_like_this/?" do
  #
  # end

  test "parse/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.parse("transcript:bus"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.parse('transcript:bus'::varchar))}

    assert_sql(query, sql)

    assert Repo.exists?(query), "expected to execute successfully and return true"
  end

  test "phrase/3 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.phrase("transcript", ["bus", "stop"], 1))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.phrase(field => 'transcript'::varchar, phrases => ARRAY['bus','stop']::varchar[], slop => 1))}

    assert_sql(query, sql)
  end

  test "phrase_prefix/2 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.phrase_prefix("transcript", ["en"]))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.phrase_prefix(field => 'transcript'::varchar, phrases => ARRAY['en']::varchar[], max_expansion => 0))}

    assert_sql(query, sql)
  end

  test "int4range/4 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.int4range("call_length", 5, nil, "[)"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'call_length'::varchar, range => int4range(5, NULL, '[)'::varchar)))}

    assert_sql(query, sql)
  end

  test "int8range/4 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.int8range("call_length", 5, nil, "[)"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'call_length'::varchar, range => int8range(5, NULL, '[)'::varchar)))}

    assert_sql(query, sql)
  end

  test "daterange/4 generates a query" do
    start = ~D[2024-10-09]
    stop = ~D[2024-10-10]

    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.daterange("start_time", ^start, ^stop, "[]"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'start_time'::varchar, range => daterange($1, $2, '[]'::varchar)))}

    assert_sql(query, sql)
  end

  test "tsrange/4 generates a query" do
    from = ~U[2024-10-09 08:00:00.00Z]

    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.tsrange("start_time", ^from, nil, "[)"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.range(field => 'start_time'::varchar, range => tsrange($1, NULL, '[)'::varchar)))}

    assert_sql(query, sql)
  end

  test "regex/2 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.regex("transcript", "bus (stop|route)"))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.regex(field => 'transcript'::varchar, pattern => 'bus (stop|route)'::varchar))}

    assert_sql(query, sql)
  end

  test "term/2 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where: PDB.search(c.id, PDB.term("talk_group_id", 144))
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.term(field => 'talk_group_id'::varchar, value => 144))}

    assert_sql(query, sql)
  end

  test "term_set/1 generates a query" do
    query =
      from(
        c in Call,
        select: c.id,
        where:
          PDB.search(
            c.id,
            PDB.term_set([
              PDB.term("talk_group_id", 144),
              PDB.term("talk_group_id", 145)
            ])
          )
      )

    sql =
      ~s{SELECT c0."id" FROM "calls" AS c0 WHERE (c0."id" @@@ paradedb.term_set(terms => ARRAY[paradedb.term(field => 'talk_group_id'::varchar, value => 144),paradedb.term(field => 'talk_group_id'::varchar, value => 145)]))}

    assert_sql(query, sql)
  end

  test "results map to schemas" do
    query =
      from(
        c in Call,
        where: PDB.search(c.id, "transcript:mechanical"),
        limit: 1
      )

    assert match?(%Call{}, Repo.one!(query))
  end
end
