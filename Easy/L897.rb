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
# @return {TreeNode}
def increasing_bst(root)
  dfs(root)
end

def dfs(root, tail = nil)
  return tail if root.nil?

  res = dfs(root.left, root)
  root.left = nil
  root.right = dfs(root.right, tail)

  res
end
