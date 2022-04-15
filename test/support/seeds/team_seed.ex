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

  def teams_data_list(length) do
    teams_data_list([], length)
  end

  defp teams_data_list(list, 0) do
    list
  end

  defp teams_data_list(list, length) when length > 0 do
    count = length - 1
    newList = [team_data() | list]
    teams_data_list(newList, count)
  end
end
