ExUnit.start()

defmodule Test do
  use ExUnit.Case, async: true

  test "Case 1" do
    assert Solution.two_sum([2,7,11,15], 9) == [0, 1]
  end

  test "Case 2" do
    assert Solution.two_sum([3, 2, 4], 6) == [1, 2]
  end

  test "Case 3" do
    assert Solution.two_sum([3, 3], 6) == [0, 1]
  end
end
