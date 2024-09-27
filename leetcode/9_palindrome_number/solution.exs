defmodule Solution do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) do
    str_value = Integer.to_string(x)
    reversed_str_value = String.reverse(str_value)
    str_value == reversed_str_value
  end
end
