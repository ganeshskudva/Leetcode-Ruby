# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_middle(head)
  return nil if head.nil? || head.next.nil?

  slow = head
  fast = head.next.next

  while !fast.nil? && !fast.next.nil?
    fast = fast.next.next
    slow = slow.next
  end

  slow.next = slow.next.next
  head
end
