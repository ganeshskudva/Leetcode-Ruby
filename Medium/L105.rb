# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  return nil if preorder.empty? || inorder.empty?

  mp = {}
  (0..inorder.size - 1).each do |i|
    mp[inorder[i]] = i
  end

  solve(preorder, inorder, mp, 0, preorder.size - 1, 0, inorder.size - 1)
end

def solve(preorder, inorder, mp, pre_start, pre_end, in_start, in_end)
  return nil if pre_start > pre_end || in_start > in_end

  root = TreeNode.new(preorder[pre_start])
  in_root = mp[root.val]
  num_left = in_root - in_start

  root.left = solve(preorder, inorder, mp, pre_start + 1, pre_start + num_left, in_start, in_root - 1)
  root.right = solve(preorder, inorder, mp, pre_start + num_left + 1, pre_end, in_root + 1, in_end)

  root
end
