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
# @return {Integer[]}
def right_side_view(root)
  return [] if root.nil?

  res = []
  q = []
  q << root

  until q.empty?
    size = q.size

    while size.positive?
      size -= 1
      cur = q.shift

      res << cur.val if size.zero?

      q << cur.left unless cur.left.nil?
      q << cur.right unless cur.right.nil?
    end
  end

  res
end
