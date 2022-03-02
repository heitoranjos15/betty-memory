defmodule BettyMemory.Core.Market do
  alias BettyMemory.Core.Sport

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          status: Integer.t(),
          sport: Sport.t()
        }

  @enforce_keys [:name, :description, :status]
  defstruct name: "",
            description: "",
            status: 0,
            sport: nil

  @spec new(Enum.t()) :: t
  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
