ExUnit.start()

defmodule Test do
  use ExUnit.Case, async: true

  test "Case 1" do
    assert Solution.is_palindrome(121) == true
  end

  test "Case 2" do
    assert Solution.is_palindrome(-121) == false
  end

  test "Case 3" do
    assert Solution.is_palindrome(10) == false
  end
end
