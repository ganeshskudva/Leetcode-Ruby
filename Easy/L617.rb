# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  dfs(root1, root2)
end

def dfs(t1, t2)
  return if t1.nil? && t2.nil?

  return t2 if t1.nil?
  return t1 if t2.nil?

  root = if !t1.nil? && t2.nil?
           TreeNode.new(t1.val)
         elsif t1.nil? && !t2.nil?
           TreeNode.new(t2.val)
         else
           TreeNode.new(t1.val + t2.val)
  end

  root.left = dfs(t1.left, t2.left)
  root.right = dfs(t1.right, t2.right)

  root
end
