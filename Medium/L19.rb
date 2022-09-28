# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  front = head
  back = head

  while n.positive?
    front = front.next
    n -= 1
  end

  return head.next if front.nil?

  until front.next.nil?
    front = front.next
    back = back.next
  end

  back.next = back.next.next

  head
end
