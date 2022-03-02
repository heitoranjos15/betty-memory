defmodule BettyMemory.Core.Status do
  @status_enum %{
    :inactive => 0,
    :active => 1
  }

  @spec add_status(Map.t(), Atom.t()) :: Map.t()
  def add_status(entity, status) when is_map(entity) do
    translated_status =
      @status_enum
      |> Map.get(status)

    entity
    |> Map.put_new(translated_status)
  end
end
