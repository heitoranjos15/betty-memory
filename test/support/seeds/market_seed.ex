defmodule BettyMemory.Test.Seed.MarketSeed do
  import BettyMemory.Test.Seed.SportSeed
  alias BettyMemory.Core.Market

  def market_data do
    sport = sport_data()

    attributes = %{
      name: "Market #{:rand.uniform(1_000)}",
      description: "market description",
      status: 1,
      sport: sport
    }

    Market.new(attributes)
  end
end
