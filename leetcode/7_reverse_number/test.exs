ExUnit.start()

defmodule Test do
  use ExUnit.Case

  test "Case 1" do
    assert Solution.reverse(123) == 321
  end

  test "Case 2" do
    assert Solution.reverse(-123) == -321
  end

  test "Case 3" do
    assert Solution.reverse(120) == 21
  end

  test "Regression test 1" do
    assert Solution.reverse(1534236469) == 0

  end
end
