# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  ret = Array.new(nums.length)
  return ret if nums.empty?

  i = 0
  j = nums.length - 1
  idx = nums.length - 1
  while idx >= 0
    if nums[i].abs > nums[j].abs
      ret[idx] = nums[i] * nums[i]
      i += 1
    else
      ret[idx] = nums[j] * nums[j]
      j -= 1
    end
    idx -= 1
  end

  ret
end

