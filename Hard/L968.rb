NOT_MONITORED = 0
MONITORED_NO_CAM = 1
MONITORED_WITH_CAM = 2

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
def min_camera_cover(root)
  @cameras = 0
  top = dfs(root)

  return @cameras + 1 if top == NOT_MONITORED

  @cameras
end

def dfs(root)
  return MONITORED_NO_CAM if root.nil?

  left = dfs(root.left)
  right = dfs(root.right)

  return NOT_MONITORED if left == MONITORED_NO_CAM && right == MONITORED_NO_CAM

  if left == NOT_MONITORED || right == NOT_MONITORED
    @cameras += 1
    return MONITORED_WITH_CAM
  end

  MONITORED_NO_CAM
end
