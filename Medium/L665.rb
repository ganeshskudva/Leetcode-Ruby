# @param {Integer[]} nums
# @return {Boolean}
def check_possibility(nums)
  return true if nums.size <= 2

  modified = false
  (0..nums.size - 2).each do |i|
    next if nums[i] <= nums[i + 1]

    return false if modified

    nums[i + 1] = nums[i] if i.positive? && nums[i - 1] > nums[i + 1]

    modified = true
  end

  true
end
