defmodule BettyMemory.Test.Core.Rule do
  use ExUnit.Case
  alias BettyMemory.Core.Rule
  import BettyMemory.Test.Seed.RuleSeed

  describe "new/1" do
    test "should create a rule" do
      attributes = rule_data()
      assert %Rule{} = Rule.new(attributes)
    end
  end
end
