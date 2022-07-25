# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  res = [-1, -1]
  return res if nums.empty?

  res[0] = bin_search(nums, target, 0, true)
  return res if res[0] == -1

  res[1] = bin_search(nums, target, res[0], false)
  res
end

def bin_search(nums, tgt, start, first)
  low = start
  high = nums.size - 1
  ret = -1

  while low <= high
    mid = low + (high - low) / 2
    if nums[mid] < tgt
      low = mid + 1
    elsif nums[mid] > tgt
      high = mid - 1
    else
      ret = mid if nums[mid] == tgt

      if first
        high = mid - 1
      else
        low = mid + 1
      end
    end
  end

  ret
end
