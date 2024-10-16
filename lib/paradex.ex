defmodule Paradex do
  @moduledoc """
  A collection of macros for composing ParadeDB queries.
  """

  @doc """
  Macro for the [`@@@`](https://docs.paradedb.com/documentation/full-text/overview#basic-usage) full text search operator. `~>` is used as it's one of a few infix operators Elixir's capable of parsing, but aren't presently used.

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
  defmacro score(key_field) do
    quote do
      fragment("paradedb.score(?) AS pdb_score", unquote(key_field))
    end
  end

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
  defmacro score_as(key_field, as) do
    quote do
      fragment("paradedb.score(?) AS ?", unquote(key_field), literal(unquote(as)))
    end
  end

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

  ########################
  ## Term-Level Queries ##
  ########################

  @doc """
  Macro for [paradedb.exists](https://docs.paradedb.com/documentation/advanced/term/exists#exists). Prefixed with `pdb_` to avoid conflicting with `Ecto.Query.API.exists/1`.

      from(
        c in Call,
        where: c.id ~> pdb_exists("call_length")
      )
  """
  @doc section: :term_level_queries
  defmacro pdb_exists(field) do
    quote do
      fragment("paradedb.exists(?)", unquote(field))
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
        "paradedb.fuzzy_term(?, ?, ?, ?, ?)",
        unquote(field),
        unquote(value),
        unquote(distance),
        unquote(transpose_cost_one),
        unquote(prefix)
      )
    end
  end

  @doc """
  Macro for [paradedb.range_term](https://docs.paradedb.com/documentation/advanced/term/range_term)
  """
  @doc section: :term_level_queries
  defmacro range_term(field, value) do
    quote do
      fragment(
        "paradedb.range_term(?::varchar, ?)",
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
        "paradedb.regex(?, ?)",
        unquote(field),
        unquote(pattern)
      )
    end
  end

  @doc """
  Macro for [paradedb.term](https://docs.paradedb.com/documentation/advanced/term/term)
  """
  @doc section: :term_level_queries
  defmacro term(field, value) do
    quote do
      fragment(
        "paradedb.term(?, ?)",
        unquote(field),
        unquote(value)
      )
    end
  end

  @doc """
  Macro for [paradedb.term_set](https://docs.paradedb.com/documentation/advanced/term/term_set)
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
  """
  @doc section: :range_queries
  defmacro int4range(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?, range => int4range(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `int8` data type.
  """
  @doc section: :range_queries
  defmacro int8range(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?, range => int8range(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `date` data type.
  """
  @doc section: :range_queries
  defmacro daterange(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?, range => daterange(?, ?, ?))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  @doc """
  Macro for [paradedb.range](https://docs.paradedb.com/documentation/advanced/term/range) using the `timestamp` data type.
  """
  @doc section: :range_queries
  defmacro tsrange(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?, range => tsrange(?, ?, ?))",
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
  Macro for [paradedb.fuzzy_phrase](https://docs.paradedb.com/documentation/advanced/phrase/fuzzy_phrase).

      from(
        c in Call,
        where: c.id ~> fuzzy_phrase("transcript", "bus sotp")
      )
  """
  @doc section: :phrase_level_queries
  defmacro fuzzy_phrase(
             field,
             value,
             distance \\ 2,
             transpose_cost_one \\ true,
             prefix \\ false,
             match_all_terms \\ false
           ) do
    quote do
      fragment(
        "paradedb.fuzzy_phrase(?, ?, ?, ?, ?, ?)",
        unquote(field),
        unquote(value),
        unquote(distance),
        unquote(transpose_cost_one),
        unquote(prefix),
        unquote(match_all_terms)
      )
    end
  end

  @doc """
  Macro for [paradedb.phrase](https://docs.paradedb.com/documentation/advanced/phrase/phrase)

      from(
        c in Call,
        where: c.id ~> phrase("transcript", ["bus", "stop"], 1)
      )
  """
  @doc section: :phrase_level_queries
  defmacro phrase(field, phrases, slop \\ 0) do
    quote do
      fragment(
        "paradedb.phrase(?, ?, ?)",
        unquote(field),
        unquote(phrases),
        unquote(slop)
      )
    end
  end

  @doc """
  Macro for [paradedb.phrase_prefix](https://docs.paradedb.com/documentation/advanced/phrase/phrase_prefix)

      from(
        c in Call,
        where: c.id ~> phrase_prefix("transcript", ["en"])
      )
  """
  @doc section: :phrase_level_queries
  defmacro phrase_prefix(field, phrases, max_expansion \\ 0) do
    quote do
      fragment(
        "paradedb.phrase_prefix(?, ?, ?)",
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

  Each value must be a query object, or a list of query objects.
  """
  @doc section: :compound_queries
  defmacro boolean(must \\ [], should \\ [], must_not \\ []) do
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
        select: {c. score(c.id)}
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
  Macro for [paradedb.disjunction_max](https://docs.paradedb.com/documentation/advanced/compound/disjunction_max)
  """
  @doc section: :compound_queries
  defmacro disjunction_max(disjuncts, tie_breaker \\ 1.0) do
    quote do
      fragment(
        "paradedb.disjunction_max(?, ?::real)",
        unquote(disjuncts),
        unquote(tie_breaker)
      )
    end
  end

  @doc """
  Macro for [paradedb.empty](https://docs.paradedb.com/documentation/advanced/compound/empty)

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
  Macro for [paradedb.parse](https://docs.paradedb.com/documentation/advanced/compound/parse)

      from(
        c in Call,
        where: c.id ~> parse("transcript:bus")
      )
  """
  @doc section: :compound_queries
  defmacro parse(query) do
    quote do
      fragment("paradedb.parse(?)", unquote(query))
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
