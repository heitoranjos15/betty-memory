defmodule BettyMemory.Core.Status do
  @status_enum %{
    :inactive => 0,
    :active => 1
  }

  @spec add_status(Map.t(), Atom.t()) :: Map.t()
  def add_status(entity, code) when is_map(entity) do
    status_value =
      @status_enum
      |> Map.get(code)

    Map.put_new(entity, :status, status_value)
  end
end
