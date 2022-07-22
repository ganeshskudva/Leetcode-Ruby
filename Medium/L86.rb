# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  dummy_head = ListNode.new(-1)
  great_head = ListNode.new(-1)

  small = dummy_head
  great = great_head
  point = head

  until point.nil?
    if point.val < x
      small.next = point
      small = small.next
      point = point.next
    else
      great.next = point
      great = great.next
      point = point.next
    end
  end

  great.next = nil
  small.next = great_head.next

  dummy_head.next
end
