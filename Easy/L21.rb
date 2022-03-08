# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(l1, l2)
  if l1 == nil  
    return l2
  end
  
  if l2 == nil  
    return l1
  end
  
  if l1.val < l2.val 
    l1.next = merge_two_lists(l1.next, l2)
    return l1
  else 
    l2.next = merge_two_lists(l1, l2.next)
    return l2
  end
end
