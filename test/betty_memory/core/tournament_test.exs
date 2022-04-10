defmodule BettyMemory.Test.Core.TournamentTest do
  use ExUnit.Case

  import BettyMemory.Test.Seed.SportSeed

  alias BettyMemory.Core.Tournament

  describe "new/1" do
    test "create tournament" do
      sport = sport_data()

      attributes = %{
        name: "Tournament #{:rand.uniform(1_000)}",
        icon: "icon.png",
        sport: sport,
        country: "BR"
      }

      assert %Tournament{} = Tournament.new(attributes)
    end
  end
end
