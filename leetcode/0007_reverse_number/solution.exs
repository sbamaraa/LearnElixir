defmodule Solution do
  @spec reverse(x :: integer) :: integer
  def reverse(x) do
    reverse(x, 0)
  end

  defp reverse(x, reversed) do
    if x == 0 do
      if reversed in -2**31..2**31-1, do: reversed, else: 0
    else
      last_digit = rem(x, 10)
      reverse(div(x, 10), reversed * 10 + last_digit)
    end
  end
end
