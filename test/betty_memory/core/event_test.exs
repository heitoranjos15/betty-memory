defmodule BettyMemory.Test.Core.EventTest do
  use ExUnit.Case

  import BettyMemory.Test.Seed.TeamSeed
  import BettyMemory.Test.Seed.TournamentSeed
  import BettyMemory.Test.Seed.SportSeed

  alias BettyMemory.Core.Event

  describe "new/1" do
    test "create a new event" do
      tournament = tournament_data()
      teams = teams_data_list(2)
      sport = sport_data()

      attributes = %{
        start_date: DateTime.utc_now(),
        local: "Beira Rio",
        teams: teams,
        tournament: tournament,
        sport: sport
      }

      assert %Event{} = Event.new(attributes)
    end

    test "return error, because event needs >= 2 teams" do
      tournament = tournament_data()
      teams = teams_data_list(1)
      sport = sport_data()

      attributes = %{
        start_date: DateTime.utc_now(),
        local: "Beira Rio",
        teams: teams,
        tournament: tournament,
        sport: sport
      }

      error = Event.new(attributes)

      assert error == {:error, "min teams to create a new event is 2"}
    end
  end
end
