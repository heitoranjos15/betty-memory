defmodule BettyMemory.Core.Approach do
  @moduledoc """
  """
  alias BettyMemory.Core.Rule
  alias BettyMemory.Core.Market
  alias BettyMemory.Core.Bank

  @typedoc """

  """
  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          min_odd: Float.t(),
          max_odd: Float.t(),
          bank: Bank.t(),
          market: Market.t(),
          rules: [Rule.t()],
          status: Integer.t()
        }

  @enforce_keys [:name, :description, :min_odd, :max_odd, :bank, :market, :rules, :status]
  defstruct name: "",
            description: "",
            min_odd: 0.0,
            max_odd: 0.0,
            market: 0,
            bank: [],
            rules: [],
            status: 0

  @min_rules 4

  @spec new(Enum.t()) :: t
  def new(attributes) when length(attributes.rules) > @min_rules do
    struct!(__MODULE__, attributes)
  end

  def new(attributes) when length(attributes.rules) <= @min_rules do
    {:error, "min rules required are #{@min_rules}"}
  end
end
