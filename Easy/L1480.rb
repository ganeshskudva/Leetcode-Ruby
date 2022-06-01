# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)

  return [] if nums.empty?

  sum = 0
  res = Array.new(nums.size, 0)
  index = 0

  while index < nums.size
    sum += nums[index]
    res[index] = sum
    index += 1
  end

  res
end
