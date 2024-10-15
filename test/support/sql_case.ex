defmodule ParadeDB.SQLCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      import ParadeDB.Test.Helpers
    end
  end
end
