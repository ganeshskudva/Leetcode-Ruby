# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  res = 0

  nums.each do |n|
    res ^= n
  end

  res
end
