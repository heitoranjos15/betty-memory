defmodule BettyMemory.Test.Seed.BankSeed do
  alias BettyMemory.Core.Bank

  def bank_data do
    attributes = %{
      name: "Bank #{:rand.uniform(1_000)}",
      value: :rand.uniform(1_000),
      stake_percentage: :rand.uniform(0_1),
      initial_value: :rand.uniform(1_000),
      status: 1
    }

    Bank.new(attributes)
  end
end
