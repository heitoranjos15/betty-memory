defmodule BettyMemory.Core.Tournament do
  alias BettyMemory.Core.Sport

  @typedoc """
  """
  @type t :: %__MODULE__{
          name: String.t(),
          icon: String.t(),
          sport: Sport.t(),
          country: String.t()
        }

  @enforce_keys [:name, :icon, :sport, :country]
  defstruct name: "",
            icon: "",
            sport: "",
            country: ""

  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
