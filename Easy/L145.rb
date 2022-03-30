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
def postorder_traversal(root)
  res = []
  return res if root.nil?

  postorder(root, res)

  res
end

def postorder(root, list)
  return if root.nil?

  postorder(root.left, list)
  postorder(root.right, list)
  list << root.val
end
