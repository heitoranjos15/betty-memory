defmodule BettyMemory.Test.Seed.TeamSeed do
  import BettyMemory.Test.Seed.TournamentSeed

  alias BettyMemory.Core.Team

  def team_data() do
    tournaments = tournament_data_list(3)

    attributes = %{
      name: "Team #{:rand.uniform(10)}",
      icon: "Icon.png",
      country: "BR",
      status: 1,
      tournaments: tournaments
    }

    Team.new(attributes)
  end
end
