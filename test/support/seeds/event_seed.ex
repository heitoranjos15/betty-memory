defmodule BettyMemory.Test.Seed.EventSeed do
  import BettyMemory.Test.Seed.TeamSeed
  import BettyMemory.Test.Seed.TournamentSeed
  import BettyMemory.Test.Seed.SportSeed

  alias BettyMemory.Core.Event

  def event_data do
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

    Event.new(attributes)
  end
end
