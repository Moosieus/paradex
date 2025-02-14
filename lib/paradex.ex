defmodule Paradex do
  @moduledoc """
  A collection of macros for composing ParadeDB queries.
  """

  @doc """
  Type extensions for Postgrex, for usage in `Postgrex.Types.define/3`.
  """
  def extensions do
    [
      Paradex.FieldName
    ]
  end

  @doc """
  Macro for the [`@@@`](https://docs.paradedb.com/documentation/full-text/overview#basic-usage) full text search operator.

  `~>` is used as it's one of a few infix operators Elixir's capable of parsing, but aren't presently used.

  ## Examples
  Search queries can be run on fields directly:
      import Paradex

      from(
        c in Call,
        where: c.transcript ~> "bus"
      )

  Alternatively a key field and query object can be used for advanced queries:

      from(
        c in Call,
        where: c.id ~> disjunction_max([
          parse("transcript:bus"),
          int4range("call_length", 10, nil, "[)")
        ])
      )
  """
  @doc section: :macros
  defmacro field ~> query do
    quote do
      fragment("? @@@ ?", unquote(field), unquote(query))
    end
  end

  @doc """
  Returns the BM25 search score for each result, aliasing it as `pdb_score` in the query. Can be used with `score/0` to order results:

      from(
        c in Call,
        select: {c, score(c.id)},
        where: c.transcript ~> "mechanic",
        order_by: [desc: score()]
      )
  """
  @doc section: :macros
  defmacro score(key_field) do
    quote do
      fragment("paradedb.score(?) AS pdb_score", unquote(key_field))
    end
  end

  @doc section: :macros
  defmacro score() do
    quote do
      fragment("pdb_score")
    end
  end

  @doc """
  Same as `score/1` but uses a variable for the alias instead. Does not support literals.

      score_alias = "my_score"

      from(
        c in Call,
        select: {c, score_as(c.id, ^score_alias)},
        where: c.transcript ~> "mechanic",
        order_by: [desc: score_as(^score_alias)]
      )
  """
  @doc section: :macros
  defmacro score_as(key_field, as) do
    quote do
      fragment("paradedb.score(?) AS ?", unquote(key_field), literal(unquote(as)))
    end
  end

  @doc section: :macros
  defmacro score_as(as) do
    quote do
      fragment("?", literal(unquote(as)))
    end
  end

  @doc """
  Macro for [paradedb.snippet](https://docs.paradedb.com/documentation/full-text/highlighting), used for highlighting.

      from(
        c in Call,
        select: {c, snippet(c.transcript)},
        where: c.transcript ~> "mechanic"
      )
  """
  @doc section: :macros
  defmacro snippet(field, start_tag \\ "<b>", end_tag \\ "</b>", max_num_chars \\ 150) do
    quote do
      fragment(
        "paradedb.snippet(?, start_tag => ?, end_tag => ?, max_num_chars => ?)",
        unquote(field),
        unquote(start_tag),
        unquote(end_tag),
        unquote(max_num_chars)
      )
    end
  end

  #######################
  ## Full Text Queries ##
  #######################

  @doc """
  Macro for [paradedb.match](https://docs.paradedb.com/documentation/advanced/full-text/match).

      from(
        c in Call,
        where: c.id ~> match("transcript", "bus stop")
      )
  """
  @doc section: :full_text_queries
  defmacro match(
             field,
             value,
             distance \\ 0,
             transposition_cost_one \\ true,
             prefix \\ false,
             conjunction_mode \\ false
           ) do
    quote do
      fragment(
        "paradedb.match(?::paradedb.fieldname, ?, distance => ?, transposition_cost_one => ?, prefix => ?, conjunction_mode => ?)",
        unquote(field),
        unquote(value),
        unquote(distance),
        unquote(transposition_cost_one),
        unquote(prefix),
        unquote(conjunction_mode)
      )
    end
  end

  ########################
  ## Term-Level Queries ##
  ########################

  @doc """
  Macro for [paradedb.exists](https://docs.paradedb.com/documentation/advanced/term/exists#exists).

  Prefixed with `pdb_` to avoid conflicting with `Ecto.Query.API.exists/1`.

      from(
        c in Call,
        where: c.id ~> pdb_exists("call_length")
      )
  """
  @doc section: :term_level_queries
  defmacro pdb_exists(field) do
    quote do
      fragment("paradedb.exists(?::paradedb.fieldname)", unquote(field))
    end
  end

  @doc """
  Macro for [paradedb.fuzzy_term](https://docs.paradedb.com/documentation/advanced/term/fuzzy_term).

      from(
        c in Call,
        where: c.id ~> fuzzy_term("transcript", "bus", 2, true, false)
      )
  """
  @doc section: :term_level_queries
  defmacro fuzzy_term(field, value, distance \\ 2, transpose_cost_one \\ true, prefix \\ false) do
    quote do
      fragment(
        "paradedb.fuzzy_term(?::paradedb.fieldname, ?, ?, ?, ?)",
        unquote(field),
        unquote(value),
        unquote(distance),
        unquote(transpose_cost_one),
        unquote(prefix)
      )
    end
  end

  @doc """
  Macro for [paradedb.range_term](https://docs.paradedb.com/documentation/advanced/term/range_term).
  """
  @doc section: :term_level_queries
  defmacro range_term(field, value) do
    quote do
      fragment(
        "paradedb.range_term(?::paradedb.fieldname, ?)",
        unquote(field),
        unquote(value)
      )
    end
  end

  @doc """
  Macro for [paradedb.regex](https://docs.paradedb.com/documentation/advanced/term/regex). Be mindful that these regular expressions follow [Tantivy's syntax](https://docs.rs/tantivy-fst/latest/tantivy_fst/struct.Regex.html), which follows Rust's regex crate with a few variations.

      from(
        c in Call,
        where: c.id ~> regex("transcript", "(stop|route)")
      )
  """
  @doc section: :term_level_queries
  defmacro regex(field, pattern) do
    quote do
      fragment(
        "paradedb.regex(?::paradedb.fieldname, ?)",
        unquote(field),
        unquote(pattern)
      )
    end
  end

  @doc """
  Macro for [paradedb.term](https://docs.paradedb.com/documentation/advanced/term/term).

      from(
        c in Call,
        where: c.id ~> term("talkgroup_num", 7695)
      )
  """
  @doc section: :term_level_queries
  defmacro term(field, value) do
    quote do
      fragment(
        "paradedb.term(?::paradedb.fieldname, ?)",
        unquote(field),
        unquote(value)
      )
    end
  end

  @doc """
  Macro for [paradedb.term_set](https://docs.paradedb.com/documentation/advanced/term/term_set).

      from(
        c in Call,
        where: c.id ~> term_set([
          term("talkgroup_num", 7700),
          term("call_length", 20)
        ])
      )
  """
  @doc section: :term_level_queries
  defmacro term_set(terms) do
    quote do
      fragment(
        "paradedb.term_set(terms => ?)",
        unquote(terms)
      )
    end
  end

  ###################
  ## Range Queries ##
  ###################

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `int4` data type.

      from(
        c in Call,
        where: c.id ~> int4range("call_length", 5, nil, "[)")
      )
  """
  @doc section: :range_queries
  defmacro int4range(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::paradedb.fieldname, range => int4range(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `int8` data type.

      from(
        c in Call,
        where: c.id ~> int8range("call_length", 5, nil, "[)")
      )
  """
  @doc section: :range_queries
  defmacro int8range(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::paradedb.fieldname, range => int8range(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `date` data type.

      start = ~D[2024-10-09]
      stop = ~D[2024-10-10]

      query =
        from(
          c in Call,
          where: c.id ~> daterange("start_time", ^start, ^stop, "[]")
        )
  """
  @doc section: :range_queries
  defmacro daterange(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::paradedb.fieldname, range => daterange(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `timestamp` data type.

      begin = ~U[2024-10-09 08:00:00.00Z]

      query =
        from(
          c in Call,
          where: c.id ~> tsrange("start_time", ^begin, nil, "[)")
        )
  """
  @doc section: :range_queries
  defmacro tsrange(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::paradedb.fieldname, range => tsrange(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  ##########################
  ## Phrase-Level Queries ##
  ##########################

  @doc """
  Macro for [paradedb.phrase](https://docs.paradedb.com/documentation/advanced/phrase/phrase).

      from(
        c in Call,
        where: c.id ~> phrase("transcript", ["bus", "stop"], 1)
      )
  """
  @doc section: :phrase_level_queries
  defmacro phrase(field, phrases, slop \\ 0) do
    quote do
      fragment(
        "paradedb.phrase(?::paradedb.fieldname, ?, ?)",
        unquote(field),
        unquote(phrases),
        unquote(slop)
      )
    end
  end

  @doc """
  Macro for [paradedb.phrase_prefix](https://docs.paradedb.com/documentation/advanced/phrase/phrase_prefix).

      from(
        c in Call,
        where: c.id ~> phrase_prefix("transcript", ["en"])
      )
  """
  @doc section: :phrase_level_queries
  defmacro phrase_prefix(field, phrases, max_expansion \\ 0) do
    quote do
      fragment(
        "paradedb.phrase_prefix(?::paradedb.fieldname, ?, ?)",
        unquote(field),
        unquote(phrases),
        unquote(max_expansion)
      )
    end
  end

  ######################
  ## Compound Queries ##
  ######################

  @doc """
  Macro for [paradedb.all](https://docs.paradedb.com/documentation/advanced/compound/all).

      from(
        c in Call,
        where: c.id ~> all()
      )
  """
  @doc section: :compound_queries
  defmacro all() do
    quote do
      fragment("paradedb.all()")
    end
  end

  @doc """
  Macro for [paradedb.boolean](https://docs.paradedb.com/documentation/advanced/compound/boolean).

  Each value must be a literal Keyword list at the top level, where each value is a list:
      x = "transcript:transfer"

      from(
        c in Call,
        where: c.id ~> boolean(
          must: [parse(^x)],
          must_not: [parse("transcript:station")]
        )
      )

  Keys other than `must`, `should`, and `must_not` are ignored, so be wary of misspelling.
  """
  @doc section: :compound_queries
  defmacro boolean(queries) do
    must = Keyword.get(queries, :must, [])
    should = Keyword.get(queries, :should, [])
    must_not = Keyword.get(queries, :must_not, [])

    quote do
      fragment(
        "paradedb.boolean(must => ?, should => ?, must_not => ?)",
        unquote(must),
        unquote(should),
        unquote(must_not)
      )
    end
  end

  @doc """
  Macro for [paradedb.boost](https://docs.paradedb.com/documentation/advanced/compound/boost).

      from(
        c in Call,
        select: {c. score(c.id)},
        boost(2.0, "transcript:bus")
      )
  """
  @doc section: :compound_queries
  defmacro boost(boost, query) do
    quote do
      fragment(
        "paradedb.boost(?::real, ?)",
        unquote(boost),
        unquote(query)
      )
    end
  end

  @doc """
  Macro for [paradedb.const_score](https://docs.paradedb.com/documentation/advanced/compound/const).

      from(
        c in Call,
        select: {c, score(c.id)},
        where: c.id ~> const_score(2.0, parse("transcript:bus"))
      )
  """
  @doc section: :compound_queries
  defmacro const_score(score, query) do
    quote do
      fragment(
        "paradedb.const_score(?::real, ?)",
        unquote(score),
        unquote(query)
      )
    end
  end

  @doc """
  Macro for [paradedb.disjunction_max](https://docs.paradedb.com/documentation/advanced/compound/disjunction_max).

      from(
        c in Call,
        where:
          c.id ~> disjunction_max([
            parse("transcript:bus"),
            int4range("call_length", 10, nil, "[)")
          ])
      )
  """
  @doc section: :compound_queries
  defmacro disjunction_max(disjuncts, tie_breaker \\ 0.0) do
    quote do
      fragment(
        "paradedb.disjunction_max(?, ?::real)",
        unquote(disjuncts),
        unquote(tie_breaker)
      )
    end
  end

  @doc """
  Macro for [paradedb.empty](https://docs.paradedb.com/documentation/advanced/compound/empty).

      from(
        c in Call,
        where: c.id ~> empty()
      )
  """
  @doc section: :compound_queries
  defmacro empty() do
    quote do
      fragment("paradedb.empty()")
    end
  end

  @doc """
  Macro for [paradedb.parse](https://docs.paradedb.com/documentation/advanced/compound/parse).

      from(
        c in Call,
        where: c.id ~> parse("transcript:bus")
      )
  """
  @doc section: :compound_queries
  defmacro parse(query, lenient \\ false, conjunction_mode \\ true) do
    quote do
      fragment(
        "paradedb.parse(?, lenient => ?, conjunction_mode => ?)",
        unquote(query),
        unquote(lenient),
        unquote(conjunction_mode)
      )
    end
  end

  @doc """
  Macro for [paradedb.parse_with_field](https://docs.paradedb.com/documentation/advanced/compound/parse#parse-with-field).

      from(
        c in Call,
        where: c.id ~> parse_with_field("transcript", "traffic congestion")
      )
  """
  @doc section: :compound_queries
  defmacro parse_with_field(field, query, lenient \\ false, conjunction_mode \\ true) do
    quote do
      fragment(
        "paradedb.parse_with_field(?::paradedb.fieldname, ?, lenient => ?, conjunction_mode => ?)",
        unquote(field),
        unquote(query),
        unquote(lenient),
        unquote(conjunction_mode)
      )
    end
  end

  #########################
  ## Specialized Queries ##
  #########################

  # defmacro more_like_this() do
  #   quote do
  #     fragment("?")
  #   end
  # end
end
