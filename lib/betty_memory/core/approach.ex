defmodule BettyMemory.Core.Approach do
  @moduledoc """
  """
  alias BettyMemory.Core.Rule
  alias BettyMemory.Core.Sport
  alias BettyMemory.Core.ExitReason
  alias BettyMemory.Core.Market

  @typedoc """

  """
  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          minimal_odd: Float.t(),
          maximun_odd: Float.t(),
          sport: Sport.t(),
          bank_id: Integer.t(),
          market: Market.t(),
          rules: [Rule.t()],
          exit_reason: [ExitReason.t()]
        }

  @enforce_keys [:name, :description]
  defstruct name: "",
            description: "",
            minimal_odd: 0.0,
            maximun_odd: 0.0,
            sport: nil,
            bank_id: 0,
            market: 0,
            rules: [],
            exit_reason: []

  @spec new(Enum.t()) :: t
  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
