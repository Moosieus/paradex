defmodule Paradex.SQLCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      import Paradex.Test.Helpers
    end
  end
end
