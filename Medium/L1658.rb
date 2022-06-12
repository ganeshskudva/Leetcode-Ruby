# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  target = -x
  nums.each do |n|
    target += n
  end

  return nums.size if target.zero?

  mp = {}
  mp[0] = -1
  sum = 0
  int_min = -(2**(0.size * 8 -2))
  res = int_min

  (0..nums.size - 1).each do |i|
    sum += nums[i]
    res = [res, i - mp[sum - target]].max if mp.key?(sum - target)
    mp[sum] = i
  end

  return -1 if res == int_min

  nums.size - res
end
