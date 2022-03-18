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
def reverse_list(head)
  new_head = nil
  until head.nil?
    tmp = head.next
    head.next = new_head
    new_head = head
    head = tmp
  end

  new_head
end
