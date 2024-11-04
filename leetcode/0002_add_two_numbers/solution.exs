defmodule ListNode do
  @type t :: %__MODULE__{
    val: integer,
    next: ListNode.t() | nil
  }

  defstruct val: 0, next: nil
end

defmodule Solution do
  @spec add_two_numbers(l1 :: ListNode.t | nil, l2 :: ListNode.t | nil) :: ListNode.t | nil
  def add_two_numbers(l1, l2) do
    add(l1, l2, 0)
  end

  def add(nil, nil, 0), do: nil

  def add(nil, nil, r) do
    %ListNode{
      val: r,
      next: nil
    }
  end

  def add(l1, nil, r) do
    %ListNode{
      val: rem(l1.val + r, 10),
      next: add(l1.next, nil, div(l1.val + r, 10))
    }
  end

  def add(nil, l2, r) do
    %ListNode{
      val: rem(l2.val + r, 10),
      next: add(nil, l2.next, div(l2.val + r, 10))
    }
  end

  @spec add(l1 :: ListNode.t | nil, l2 :: ListNode.t | nil, r :: integer) :: ListNode.t | nil
  def add(l1, l2, r) do
    %ListNode{
      val: rem(l1.val + l2.val + r, 10),
      next: add(l1.next, l2.next, div(l1.val + l2.val + r, 10))
    }
  end
end
