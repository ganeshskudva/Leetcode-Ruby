def range_sum_bst(root, low, high)
  return 0 if root.nil?

  sum = 0
  sum += root.val if root.val <= high && root.val >= low
  left_sum = range_sum_bst(root.left, low, high)
  right_sum = range_sum_bst(root.right, low, high)

  sum = sum + left_sum + right_sum
end
