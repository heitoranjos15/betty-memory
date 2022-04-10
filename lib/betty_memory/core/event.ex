defmodule BettyMemory.Core.Event do
  alias BettyMemory.Core.Team
  alias BettyMemory.Core.Sport

  @typedoc """
  """
  @type t :: %__MODULE__{
          start_date: Date.t(),
          local: String.t(),
          teams: [Team.t()],
          sport: Sport.t()
        }

  @enforce_keys [:start_date, :local, :teams, :sport]
  defstruct start_date: DateTime.utc_now(),
            local: "",
            teams: [],
            sport: ""

  @min_teams 2

  def new(attributes) when length(attributes.teams) >= @min_teams do
    struct!(__MODULE__, attributes)
  end

  def new(_) do
    {:error, "min team for a new event is #{@min_teams}"}
  end
end
