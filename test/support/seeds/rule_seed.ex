defmodule BettyMemory.Test.Seed.RuleSeed do
  def rule_data do
    attributes = %{
      name: "Rule #{:rand.uniform(1_000)}",
      type: "rule",
      description: "desc rule",
      status: 1
    }

    attributes
  end

  def rules_data_list(length) do
    rules_data_list([], length)
  end

  defp rules_data_list(list, 0) do
    list
  end

  defp rules_data_list(list, length) when length > 0 do
    count = length - 1
    newList = [rule_data() | list]
    rules_data_list(newList, count)
  end
end
