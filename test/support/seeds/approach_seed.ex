defmodule BettyMemory.Test.Seed.ApproachSeed do
  import BettyMemory.Test.Seed.RuleSeed
  import BettyMemory.Test.Seed.BankSeed
  import BettyMemory.Test.Seed.MarketSeed

  alias BettyMemory.Core.Approach

  def approach_data do
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

    Approach.new(attributes)
  end
end
