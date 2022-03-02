defmodule BettyMemory.Core.Sport do
  @type t :: %__MODULE__{
          name: String.t(),
          abbreviation: String.t(),
          icon: String.t()
        }

  @enforce_keys [:name, :abbreviation, :icon]
  defstruct name: "",
            abbreviation: "",
            icon: ""

  @spec new(Enum.t()) :: t
  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
