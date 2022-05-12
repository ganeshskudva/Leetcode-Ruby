# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  @ans = []
  @tmp = []
  @used = Array.new(nums.size, false)

  nums.sort!
  back_track(nums)

  @ans
end

def back_track(nums)
  if @tmp.size == nums.size
    @ans << Marshal.load(Marshal.dump(@tmp))
    return
  end

  (0..nums.size - 1).each do |i|
    next if @used[i] || (i.positive? && nums[i] == nums[i - 1] && !@used[i - 1])

    @used[i] = true
    @tmp << nums[i]
    back_track(nums)
    @used[i] = false
    @tmp.pop
  end
end
