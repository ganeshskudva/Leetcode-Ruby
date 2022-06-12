# @param {Integer[]} nums
# @return {Integer}
def maximum_unique_subarray(nums)
  i = 0
  j = 0
  sum = 0
  res = 0
  vis = Array.new(false, 10001)

  while j < nums.size
    while j < nums.size && !vis[nums[j]]
      vis[nums[j]] = true
      sum += nums[j]
      j += 1
    end
    res = [res, sum].max

    while j < nums.size && vis[nums[j]]
      vis[nums[i]] = false
      sum -= nums[i]
      i += 1
    end
  end

  res
end
