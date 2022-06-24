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
def balance_bst(root)
  @lst = []
  in_order(root)

  build_bst(0, @lst.size - 1)
end

def in_order(root)
  return if root.nil?

  in_order(root.left)
  @lst << root
  in_order(root.right)
end

def build_bst(low, high)
  return nil  if low > high

  mid = low + (high - low) / 2
  node = @lst[mid]

  node.left = build_bst(low, mid - 1)
  node.right = build_bst(mid + 1, high)

  node
end
