defmodule Paradex do
  @moduledoc """
  Paradex specific search expressions.
  """

  @doc """
  Macro for [@@@](https://docs.paradedb.com/documentation/optimization/overview#the-operator) operator.

      from(
        c in Call,
        where: Paradex.search(c.id, Paradex.parse("transcript:ambulance"))
      )
  """
  defmacro search(key_field, query) do
    quote do
      fragment("? @@@ ?", unquote(key_field), unquote(query))
    end
  end

  @doc """
  Macro for [paradedb.all](https://docs.paradedb.com/documentation/advanced/all).

      from(
        c in Call,
        where: Paradex.search(c.id, Paradex.all())
      )
  """
  defmacro all() do
    quote do
      fragment("paradedb.all()")
    end
  end

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

  defmacro boost(query, boost) do
    quote do
      fragment(
        "paradedb.boost(query => ?, boost => ?::real)",
        unquote(query),
        unquote(boost)
      )
    end
  end

  defmacro const_score(query, score) do
    quote do
      fragment(
        "paradedb.const_score(query => ?, score => ?::real)",
        unquote(query),
        unquote(score)
      )
    end
  end

  defmacro disjunction_max(disjuncts, tie_breaker \\ 1.0) do
    quote do
      fragment(
        "paradedb.disjunction_max(disjuncts => ?, tie_breaker => ?::real)",
        unquote(disjuncts),
        unquote(tie_breaker)
      )
    end
  end

  defmacro empty() do
    quote do
      fragment("paradedb.empty()")
    end
  end

  defmacro exists(field) do
    quote do
      fragment("paradedb.exists(field => ?::varchar)", unquote(field))
    end
  end

  defmacro fuzzy_term(field, value, distance \\ 2, transpose_cost_one \\ true, prefix \\ false) do
    quote do
      fragment(
        "paradedb.fuzzy_term(field => ?::varchar, value => ?::varchar, distance => ?, transpose_cost_one => ?, prefix => ?)",
        unquote(field),
        unquote(value),
        unquote(distance),
        unquote(transpose_cost_one),
        unquote(prefix)
      )
    end
  end

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
        "paradedb.fuzzy_phrase(field => ?::varchar, value => ?::varchar, distance => ?, transpose_cost_one => ?, prefix => ?, match_all_terms => ?)",
        unquote(field),
        unquote(value),
        unquote(distance),
        unquote(transpose_cost_one),
        unquote(prefix),
        unquote(match_all_terms)
      )
    end
  end

  # defmacro more_like_this() do
  #   quote do
  #     fragment("?")
  #   end
  # end

  defmacro parse(query) do
    quote do
      fragment("paradedb.parse(?::varchar)", unquote(query))
    end
  end

  defmacro phrase(field, phrases, slop \\ 0) do
    quote do
      fragment(
        "paradedb.phrase(field => ?::varchar, phrases => ?::varchar[], slop => ?)",
        unquote(field),
        unquote(phrases),
        unquote(slop)
      )
    end
  end

  defmacro phrase_prefix(field, phrases, max_expansion \\ 0) do
    quote do
      fragment(
        "paradedb.phrase_prefix(field => ?::varchar, phrases => ?::varchar[], max_expansion => ?)",
        unquote(field),
        unquote(phrases),
        unquote(max_expansion)
      )
    end
  end

  defmacro int4range(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::varchar, range => int4range(?, ?, ?::varchar))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  defmacro int8range(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::varchar, range => int8range(?, ?, ?::varchar))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  defmacro daterange(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::varchar, range => daterange(?, ?, ?::varchar))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  defmacro tsrange(field, min, max, bounds) do
    quote do
      fragment(
        "paradedb.range(field => ?::varchar, range => tsrange(?, ?, ?::varchar))",
        unquote(field),
        unquote(min),
        unquote(max),
        unquote(bounds)
      )
    end
  end

  defmacro regex(field, pattern) do
    quote do
      fragment(
        "paradedb.regex(field => ?::varchar, pattern => ?::varchar)",
        unquote(field),
        unquote(pattern)
      )
    end
  end

  defmacro term(field, value) do
    quote do
      fragment(
        "paradedb.term(field => ?::varchar, value => ?)",
        unquote(field),
        unquote(value)
      )
    end
  end

  defmacro term_set(terms) do
    quote do
      fragment(
        "paradedb.term_set(terms => ?)",
        unquote(terms)
      )
    end
  end
end
