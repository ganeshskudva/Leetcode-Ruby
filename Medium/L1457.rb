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
# @return {Integer}
def pseudo_palindromic_paths (root)
  @res = 0
  @mp = Array.new(10, 0)
  solve(root)
  @res
end

def solve(root)
  return if root.nil?

  @map[root.val] = @map[root.val] + 1
  @res += 1 if root.left.nil? && root.right.nil? && palindrome?

  solve(root.left)
  solve(root.right)

  @mp[root.val] -= 1
end

def palindrome?
  miss = 0
  (0..9).each do |i|
    miss += 1 if @mp[i].odd?

    return false if miss > 1
  end

  true
end
