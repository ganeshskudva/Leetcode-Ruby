# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  list = []
  bt(list, [], nums, 0)
  list
end

def bt(list, tmp, nums, start)
  list << tmp.dup

  (start...nums.length).each do |i|
    tmp << nums[i]
    bt(list, tmp, nums, i + 1)
    tmp.pop
  end
end
