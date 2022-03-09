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
def delete_duplicates(head)
  cur = head
  pre = nil

  while cur&.next
    if cur.val != cur.next.val
      pre = cur
    else
      cur = cur.next while !cur.next.nil? && (cur.next.val == cur.val)
      if !pre.nil?
        pre.next = cur.next
      else
        head = cur.next
      end
    end
    cur = cur.next
  end
  head
end
