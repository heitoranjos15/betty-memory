defmodule BettyMemory.Core.Bet do
  @moduledoc """
  """

  alias BettyMemory.Core.Event
  alias BettyMemory.Core.Approach
  alias BettyMemory.Core.Team

  @typedoc """
  """

  @type t :: %__MODULE__{
          stakes: Float.t(),
          odd: Float.t(),
          comment: String.t(),
          event: Event.t(),
          approach: Approach.t(),
          team: Team.t(),
          entry_type: Integer.t()
        }

  @enforce_keys [:stakes, :odd, :event, :approach, :team, :entry_type]
  defstruct stakes: "",
            odd: 0,
            comment: "",
            event: "",
            approach: "",
            team: "",
            entry_type: 1

  @entry_types %{
    :back => 1,
    :lay => 2
  }

  def new(attributes) do
    entry_value = Map.get(@entry_types, attributes.entry_type)

    if entry_value do
      struct!(__MODULE__, Map.put(attributes, :entry_type, entry_value))
    else
      {:error, "invalid entry"}
    end
  end
end
