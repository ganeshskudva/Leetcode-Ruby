# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def deepest_leaves_sum(root)
  return 0 if root.nil?

  q = [root]

  until q.empty?
    size = q.size
    sum = 0
    while size.positive?
      node = q.shift

      if node.left.nil? && node.right.nil?
        sum += node.val
      else
        q << node.left unless node.left.nil?
        q << node.right unless node.right.nil?
      end
      size -= 1
    end
  end

  sum
end
