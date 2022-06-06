# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  return if headA.nil? || headB.nil?

  dummy_a = headA
  dummy_b = headB

  while dummy_a != dummy_b
    dummy_a = if dummy_a.nil?
                headB
              else
                dummy_a.next
              end

    dummy_b = if dummy_b.nil?
                headA
              else
                dummy_b.next
              end

  end

  dummy_a
end
