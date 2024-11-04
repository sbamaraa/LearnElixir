defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    Enum.reduce_while(Enum.with_index(nums), %{}, fn {element, ind}, map ->
      to_find = target - element
      if map[to_find], do: {:halt, [map[to_find], ind]}, else: {:cont, Map.put(map, element, ind)}

    end)
  end
end

