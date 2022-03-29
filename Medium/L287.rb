# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  return nil if nums.empty?

  slow = nums[0]
  fast = nums[nums[0]]

  # A loop guaranteed
  while slow != fast
    slow = nums[slow]
    fast = nums[nums[fast]]
  end

  # Set a tag at start point. It would meet slow at the entry of circle.
  fast = 0
  while fast != slow
    fast = nums[fast]
    slow = nums[slow]
  end

  slow
end
