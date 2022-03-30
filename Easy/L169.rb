# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  count = 0
  candidate = nil

  nums.each do |n|
    candidate = n if count == 0

    count += n == candidate ? 1 : -1
  end

  candidate
end
