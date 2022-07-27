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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  until root.nil?
    unless root.left.nil? || root.right.nil?
      t = root.left
      t = t.right until t.right.nil?
      t.right = root.right
    end

    root.right = root.left unless root.left.nil?
    root.left = nil
    root = root.right
  end
end
