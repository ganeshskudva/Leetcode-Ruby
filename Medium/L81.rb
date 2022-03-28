# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right do
    mid = left + (right - left)/2
    return true if nums[mid] == target

    if nums[left] < nums[mid]
      if nums[left] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    elsif nums[left] > nums[mid]
      if nums[mid] < target && target <= nums[right]
        left = mid + 1
      else
        right = mid - 1
      end
    else
      left += 1
    end
  end
  false
end
