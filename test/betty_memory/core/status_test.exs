defmodule BettyMemory.Test.Core.StatusMock do
  use ExUnit.Case

  import BettyMemory.Test.Seed.MarketSeed

  alias BettyMemory.Core.Status
  alias BettyMemory.Core.Market

  describe "add_status/2" do
    test "should return entity with status" do
      entity = %{name: "entity"}
      _entity_with_status = %{name: "entity", status: 0}
      assert _entity_with_status = Status.add_status(entity, :inactive)
    end

    test "should return market with status" do
      market = market_data()
      assert %Market{status: 1} = Status.add_status(market, :active)
    end
  end
end
