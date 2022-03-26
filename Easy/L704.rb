# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  low = 0
  high = nums.size - 1

  while low <= high
    mid = low + (high - low)/2
    return mid if target == nums[mid]

    if target > nums[mid]
      low = mid + 1
    else
      high = mid - 1
    end
  end

  -1
end
