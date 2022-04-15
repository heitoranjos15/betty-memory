defmodule BettyMemory.Core.Status do
  @status_enum %{
    :inactive => 0,
    :active => 1
  }

  @spec add_status(Map.t(), Atom.t()) :: Map.t()
  def add_status(entity, code) when is_map(entity) do
    status_value = Map.get(@status_enum, code)

    if status_value do
      Map.put(entity, :status, status_value)
    else
      {:error, "invalid status code"}
    end
  end
end
