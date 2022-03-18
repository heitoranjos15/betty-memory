defmodule BettyMemory.Test.Core.SportTest do
  use ExUnit.Case

  alias BettyMemory.Core.Sport

  describe "new/1" do
    test "should create a new sport" do
      attributes = %{
        name: "Sport #{:rand.uniform(1_000)}",
        abbreviation: "spt",
        icon: "img"
      }

      assert %Sport{} = Sport.new(attributes)
    end
  end
end
