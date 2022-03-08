# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  walker = head
  runner = head

  while runner != nil and runner.next != nil do
    walker = walker.next
    runner = runner.next.next
    if runner == walker
      return true
    end
  end

  false
end
