defmodule BettyMemory.Test.Core.BankTest do
  use ExUnit.Case
  alias BettyMemory.Core.Bank

  describe "new/1" do
    test "should create a new" do
      attributes = %{
        name: "Bank #{:rand.uniform(1_000)}",
        value: :rand.uniform(1_000),
        stake_percentage: :rand.uniform(0_1),
        initial_value: :rand.uniform(1_000),
        status: 1
      }

      assert %Bank{} = Bank.new(attributes)
    end

    test "should upsert initial_value" do
      _value = :rand.uniform(1_000)

      attributes = %{
        name: "Bank #{:rand.uniform(1_000)}",
        value: _value,
        stake_percentage: :rand.uniform(0_1),
        status: 1
      }

      bank = Bank.new(attributes)
      assert _value = bank.initial_value
    end
  end
end
