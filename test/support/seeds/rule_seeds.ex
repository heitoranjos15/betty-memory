defmodule BettyMemory.Test.Seed.RuleSeed do
  def ruleData do
    attributes = %{
      name: "Rule #{:rand.uniform(1_000)}",
      type: "rule",
      description: "desc rule",
      status: 1
    }

    attributes
  end

  def rulesDataList(length) do
    rulesDataList([], length)
  end

  defp rulesDataList(list, 0) do
    list
  end

  defp rulesDataList(list, length) when length > 0 do
    count = length - 1
    newList = [ruleData() | list]
    rulesDataList(newList, count)
  end
end
