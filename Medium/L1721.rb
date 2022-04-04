# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def swap_nodes(head, k)
  k_from_start = head
  k_from_end = head
  node = head

  until node.nil?
    k -= 1
    k_from_start = node if k.zero?
    k_from_end = k_from_end.next if k.negative?
    node = node.next
  end

  k_from_start.val, k_from_end.val = k_from_end.val, k_from_start.val

  head
end
