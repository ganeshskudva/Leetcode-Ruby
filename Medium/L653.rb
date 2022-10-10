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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  dfs(root, root, k)
end

def dfs(root, cur, k)
  return false if cur.nil?

  solve(root, cur, k - cur.val) ||
    dfs(root, cur.left, k) ||
    dfs(root, cur.right, k)
end

def solve(root, cur, val)
  return false if root.nil?

  (root.val == val) && (root != cur) ||
    (root.val < val) && solve(root.right, cur, val) ||
    (root.val > val) && solve(root.left, cur, val)
end
