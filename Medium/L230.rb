# @param {TreeNode} root
# @return {TreeNode}
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
# @return {Integer}
def kth_smallest(root, k)
  return 0 if root.nil?

  st = []
  st << root

  until st.empty?
    node = st.pop
    until node.nil?
      st << node
      node = node.left
    end

    next if st.empty?

    node = st.pop
    k -= 1
    return node.val if k.zero?

    st << node.right
  end
  0
end
