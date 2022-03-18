defmodule BettyMemory.Test.Core.StatusMock do
  use ExUnit.Case
  alias BettyMemory.Core.Status

  describe "add_status/2" do
    test "should return entity with status" do
      entity = %{name: "entity"}
      _entity_with_status = %{name: "entity", status: 0}
      assert _entity_with_status = Status.add_status(entity, :inactive)
    end
  end
end
