defmodule BettyMemory.Core.Event do
  alias BettyMemory.Core.Team
  alias BettyMemory.Core.Sport
  alias BettyMemory.Core.Tournament

  @typedoc """
  """
  @type t :: %__MODULE__{
          start_date: Date.t(),
          local: String.t(),
          teams: [Team.t()],
          tournament: Tournament.t(),
          sport: Sport.t()
        }

  @enforce_keys [:start_date, :local, :teams, :tournament, :sport]
  defstruct start_date: DateTime.utc_now(),
            local: "",
            teams: [],
            tournament: "",
            sport: ""

  @min_teams 2

  def new(attributes) when length(attributes.teams) >= @min_teams do
    struct!(__MODULE__, attributes)
  end

  def new(_) do
    {:error, "min teams to create a new event is #{@min_teams}"}
  end
end
