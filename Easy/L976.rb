# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  nums.sort!

  (nums.size - 1).downto(2).each do |i|
    perimeter = nums[i] + nums[i - 1] + nums[i - 2]
    return perimeter if nums[i] < nums[i - 1] + nums[i - 2]
  end

  0
end
