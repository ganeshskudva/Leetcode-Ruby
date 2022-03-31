# @param {Integer[]} nums
# @param {Integer} m
# @return {Integer}
def split_array(nums, m)
  return 0 if nums.empty? || m.zero?

  max = -1
  sum = 0

  nums.each do |n|
    max = [max, n].max
    sum += n
  end

  l = max
  r = sum
  mid = 0

  while l < r
    mid = l + (r - l)/2
    if is_valid(nums, mid, m)
      r = mid
    else
      l = mid + 1
    end
  end

  l
end

def is_valid(nums, cap, m)
  days = 1
  sum = 0

  nums.each do |n|
    sum += n
    if sum > cap
      sum = n
      days += 1
    end
  end

  days <= m
end
