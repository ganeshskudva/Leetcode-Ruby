# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  quick_select(nums, 0, nums.size - 1, k)
end

def quick_select(nums, lo, high, k)
  pivot = low

  j = low
  while j < high
    if nums[j] <= nums[high]
      nums[pivot], nums[j] = nums[j], nums[pivot]
      pivot += 1
    end
    j += 1
  end

  nums[pivot], nums[j] = nums[j], nums[pivot]

  cnt = high - pivot + 1
  return nums[pivot] if cnt == k

  return quick_select(nums, pivot + 1, high, k) if cnt > k

  quick_select(nums, low, pivot - 1, k - cnt)
end
