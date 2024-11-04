ExUnit.start()

defmodule Helper do
  def from_array([]), do: nil
  def from_array([head | tail]) do
    %ListNode{
      val: head,
      next: from_array(tail)
    }
  end

  def equal([], nil), do: true

  def equal([], _), do: false

  def equal(_, nil), do: false

  @spec equal(the_list :: [integer], the_list_node :: ListNode.t | nil) :: boolean
  def equal([head | tail], the_list_node) do
    (head == the_list_node.val) and equal(tail, the_list_node.next)
  end
end

defmodule Test do
  use ExUnit.Case

  test "Case 1" do
    # l1 = [2,4,3], l2 = [5,6,4]
    # [7, 0, 8]
    assert Helper.equal(
      [7, 0, 8],
      Solution.add_two_numbers(Helper.from_array([2, 4, 3]), Helper.from_array([5, 6, 4]))
    )
  end

  test "Case 2" do
    # l1 = [0], l2 = [0]
    # [0]
    assert Helper.equal(
      [0],
      Solution.add_two_numbers(Helper.from_array([0]), Helper.from_array([0]))
    )
  end

  test "Case 3" do
    # l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
    # [8,9,9,9,0,0,0,1]
    assert Helper.equal(
      [8,9,9,9,0,0,0,1],
      Solution.add_two_numbers(Helper.from_array([9,9,9,9,9,9,9]), Helper.from_array([9,9,9,9]))
    )
  end
end
