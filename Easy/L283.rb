# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  return if nums.empty?

  insert_pos = 0
  nums.each do |n|
    unless n.zero?
      nums[insert_pos] = n
      insert_pos += 1
    end
  end

  while insert_pos < nums.size
    nums[insert_pos] = 0
    insert_pos += 1
  end
end
