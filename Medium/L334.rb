# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
  left = (2**(0.size * 8 - 2) - 1)
  mid = (2**(0.size * 8 - 2) - 1)

  nums.each do |n|
    return true if n > mid

    if n < mid && n > left
      mid = n
    elsif n < left
      left = n
    end
  end

  false
end
