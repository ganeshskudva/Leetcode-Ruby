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
def convert_bst(root)
  @sum = 0
  convert(root)
  root
end

def convert(cur)
  return if cur.nil?

  convert(cur.right)
  cur.val += @sum
  @sum = cur.val
  convert(cur.left)
end
