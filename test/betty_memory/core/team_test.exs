defmodule BettyMemory.Test.Core.TeamTest do
  use ExUnit.Case

  import BettyMemory.Test.Seed.TournamentSeed

  alias BettyMemory.Core.Team

  describe "new/1" do
    test "create a new team" do
      tournament = tournament_data()

      attributes = %{
        name: "Team #{:rand.uniform()}",
        icon: "icon.png",
        status: 1,
        country: "BR",
        tournaments: [tournament]
      }

      assert %Team{} = Team.new(attributes)
    end
  end
end
