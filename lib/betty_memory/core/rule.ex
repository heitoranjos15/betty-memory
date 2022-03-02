defmodule BettyMemory.Core.Rule do
  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          description: String.t(),
          status: Integer.t()
        }

  @enforce_keys [:name, :type, :description, :status]
  defstruct name: "",
            type: "",
            description: "",
            status: 0

  @spec new(Enum.t()) :: t
  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
