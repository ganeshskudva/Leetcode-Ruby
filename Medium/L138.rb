# Definition for Node.
# class Node
#     attr_accessor :val, :next, :random
#     def initialize(val = 0)
#         @val = val
#		  @next = nil
#		  @random = nil
#     end
# end

# @param {Node} node
# @return {Node}
def copyRandomList(head)
  return unless head

  mp = {}
  node = head

  until node.nil?
    mp[node] = Node.new(node.val)
    node = node.next
  end

  node = head
  until node.nil?
    mp[node].next = mp[node.next]
    mp[node].random = mp[node.random]
    node = node.next
  end

  mp[head]
end
