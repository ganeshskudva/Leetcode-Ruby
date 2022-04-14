def search_bst(root, val)
  return root if root.nil? || val == root.val

  return search_bst(root.left, val) if val < root.val

  search_bst(root.right, val)
end
