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
# @return {Float[]}
def average_of_levels(root)
  res = []
  return res if root.nil?

  q = []
  q << root

  until q.empty?
    size = q.length
    sum = 0.0
    (0..size - 1).each do
      node = q.shift
      sum += node.val.to_f

      q << node.left unless node.left.nil?
      q << node.right unless node.right.nil?
    end
    ans << (sum / size).to_f
  end

  ans
end
