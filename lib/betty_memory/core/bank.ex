defmodule BettyMemory.Core.Bank do
  @type t :: %__MODULE__{
          name: String.t(),
          initial_value: Float.t(),
          value: Float.t(),
          stake_percentage: Float.t(),
          status: Integer.t()
        }
  @enforce_keys [:name, :value, :stake_percentage]
  defstruct name: "",
            initial_value: 0,
            value: 20.0,
            stake_percentage: 0.5,
            status: nil

  @spec new(Enum.t()) :: t
  def new(attributes) do
    attributes
    |> upsert_initial_value
    |> (&struct!(__MODULE__, &1)).()
  end

  defp upsert_initial_value(attributes) do
    has_key = Map.has_key?(attributes, :initial_value)

    unless has_key do
      Map.put_new(attributes, :initial_value, attributes.value)
    end

    attributes
  end
end
