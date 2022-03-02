defmodule BettyMemoryTest do
  use ExUnit.Case
  doctest BettyMemory

  test "greets the world" do
    assert BettyMemory.hello() == :world
  end
end
