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
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
  @res = []
  @tmp = []
  return @res if root.nil?

  bt(root, target_sum)

  @res
end

def bt(root, target_sum)
  return if root.nil?

  @tmp << root.val
  if root.left.nil? && root.right.nil? && root.val == target_sum
    @res << Marshal.load(Marshal.dump(@tmp))
  else
    bt(root.left, target_sum - root.val)
    bt(root.right, target_sum - root.val)
  end

  @tmp.pop
end
