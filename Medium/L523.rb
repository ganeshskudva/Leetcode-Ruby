# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def check_subarray_sum(nums, k)
  mp = {}
  mp[0] = -1
  running_sum = 0

  (0..nums.size - 1).each do |i|
    running_sum += nums[i]
    running_sum %= k if k != 0
    if mp.include?(running_sum)
      return true if i - mp[running_sum] > 1
    else
      mp[running_sum] = i
    end
  end

  false
end
