defmodule BettyMemory.Test.Core.BetTest do
  use ExUnit.Case

  import BettyMemory.Test.Seed.ApproachSeed
  import BettyMemory.Test.Seed.TeamSeed
  import BettyMemory.Test.Seed.EventSeed

  alias BettyMemory.Core.Bet

  describe "new/1" do
    test "create new bet" do
      approach = approach_data()
      team = team_data()
      event = event_data()

      attributes = %{
        stakes: 1,
        odd: 1.9,
        event: event,
        approach: approach,
        team: team,
        entry_type: :back
      }

      assert %Bet{} = Bet.new(attributes)
    end

    test "return error invalid entry type" do
      approach = approach_data()
      team = team_data()
      event = event_data()

      attributes = %{
        stakes: 1,
        odd: 1.9,
        event: event,
        approach: approach,
        team: team,
        entry_type: :invalid
      }

      assert Bet.new(attributes) == {:error, "invalid entry"}
    end
  end
end
