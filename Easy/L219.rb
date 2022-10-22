# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  mp = {}
  (0..nums.size - 1).each do |i|
    if mp.include?(nums[i])
      return true if i - mp[nums[i]] <= k
    end
    mp[nums[i]] = i
  end

  false
end
