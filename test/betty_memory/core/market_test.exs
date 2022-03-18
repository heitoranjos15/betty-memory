defmodule BettyMemory.Test.MarketTest do
  use ExUnit.Case

  import BettyMemory.Test.Seed.SportSeed

  alias BettyMemory.Core.Market

  describe "new/1" do
    test "create a new market" do
      sport = sport_data()

      attributes = %{
        name: "Market #{:rand.uniform(1_000)}",
        description: "market description",
        status: 1,
        sport: sport
      }

      assert %Market{} = Market.new(attributes)
    end

    test "create a new market even without sport" do
      attributes = %{
        name: "Market #{:rand.uniform(1_000)}",
        description: "market description",
        status: 1
      }

      assert %Market{} = Market.new(attributes)
    end
  end
end
