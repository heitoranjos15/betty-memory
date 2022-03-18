defmodule BettyMemory.Test.Seed.SportSeed do
  alias BettyMemory.Core.Sport

  def sport_data do
    attributes = %{
      name: "Sport #{:rand.uniform(1_000)}",
      abbreviation: "spt",
      icon: "img"
    }

    Sport.new(attributes)
  end
end
