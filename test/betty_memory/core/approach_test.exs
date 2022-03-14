defmodule BettyMemory.Test.Core.ApproachTest do
  use ExUnit.Case
  alias BettyMemory.Core.Approach
  import BettyMemory.Test.Seed.RuleSeed

  describe "new/1" do
    test "create a new approach" do
      rule = ruleData()
      assert %Approach{} = Approach.new(rule)
    end
  end
end
