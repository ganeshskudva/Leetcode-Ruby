# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  return -1 if nums.size < 3

  nums.sort!
  res = nums[0] + nums[1] + nums[2]
  (0..nums.size - 2).each do |i|
    l = i + 1
    r = nums.size - 1
    while l < r
      sum = nums[i] + nums[l] + nums[r]
      return sum if sum == target

      res = sum if (sum - target).abs < (res - target).abs

      l += 1 if sum < target

      r -= 1 if sum > target
    end
  end

  res
end
