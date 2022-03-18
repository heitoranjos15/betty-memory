defmodule BettyMemory.Test.Core.ApproachTest do
  use ExUnit.Case

  import BettyMemory.Test.Seed.RuleSeed
  import BettyMemory.Test.Seed.BankSeed
  import BettyMemory.Test.Seed.MarketSeed

  alias BettyMemory.Core.Approach

  describe "new/1" do
    test "create a new approach" do
      rules = rules_data_list(5)
      bank = bank_data()
      market = market_data()

      attributes = %{
        name: "Approach #{:rand.uniform(1_000)}",
        description: "description approach",
        min_odd: 1.8,
        max_odd: 3.0,
        bank: bank,
        market: market,
        rules: rules,
        status: 1
      }

      assert %Approach{} = Approach.new(attributes)
    end

    test "return a error when rules are less than minimal" do
      rules = rules_data_list(1)
      bank = bank_data()
      market = market_data()

      attributes = %{
        name: "Approach #{:rand.uniform(1_000)}",
        description: "description approach",
        min_odd: 1.8,
        max_odd: 3.0,
        bank: bank,
        market: market,
        rules: rules,
        status: 1
      }

      assert {:error, "min rules required are 4"} = Approach.new(attributes)
    end
  end
end
