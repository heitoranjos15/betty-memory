defmodule BettyMemory.Core.ExitReason do
  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          status: Integer.t()
        }

  @enforce_keys [:name, :description, :status]
  defstruct name: "",
            description: "",
            status: ""

  @spec new(Enum.t()) :: t
  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
