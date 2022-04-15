defmodule BettyMemory.Core.Team do
  alias BettyMemory.Core.Tournament

  @typedoc """

  """
  @type t :: %__MODULE__{
          name: String.t(),
          icon: String.t(),
          country: String.t(),
          status: String.t(),
          tournaments: [Tournament.t()]
        }

  @enforce_keys [:name, :icon, :country, :status, :tournaments]
  defstruct name: "",
            icon: "",
            country: "",
            status: nil,
            tournaments: []

  def new(attributes) do
    struct!(__MODULE__, attributes)
  end
end
