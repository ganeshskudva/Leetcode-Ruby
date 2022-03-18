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
def invert_tree(root)
  dfs(root)
end

def dfs(root)
  return root if root.nil?

  left = root.left
  right = root.right
  root.left = dfs(right)
  root.right = dfs(left)

  root
end
