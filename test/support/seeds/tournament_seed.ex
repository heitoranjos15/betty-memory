defmodule BettyMemory.Test.Seed.TournamentSeed do
  import BettyMemory.Test.Seed.SportSeed

  alias BettyMemory.Core.Tournament

  def tournament_data do
    sport = sport_data()

    attributes = %{
      name: "Tournament #{:rand.uniform(1_000)}",
      icon: "tournament description",
      sport: sport,
      country: "BR"
    }

    Tournament.new(attributes)
  end

  def tournament_data_list(length) do
    tournament_data_list([], length)
  end

  defp tournament_data_list(list, 0) do
    list
  end

  defp tournament_data_list(list, length) when length > 0 do
    count = length - 1
    newList = [tournament_data() | list]
    tournament_data_list(newList, count)
  end
end
