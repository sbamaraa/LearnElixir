defmodule Solution do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) do
    if x < 0 do
      false
    else
      is_palindrome(x, x, 0)
    end
  end

  defp is_palindrome(0, original, reversed) do
    original == reversed
  end

  defp is_palindrome(x, original, reversed) do
    last_digit = rem(x, 10)
    is_palindrome(div(x, 10), original, reversed * 10 + last_digit)
  end
end
