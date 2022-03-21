# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  res = []
  return res if nums1.empty? || nums2.empty?

  nums1.sort!
  nums2.sort!

  i = 0
  j = 0
  while i < nums1.size && j < nums2.size
    if nums1[i] == nums2[j]
      len = res.size
      i += 1
      j += 1
      next if !len.zero? && res[len - 1] == nums1[i - 1]

      res << nums1[i - 1]
    elsif nums1[i] < nums2[j]
      i += 1
    else
      j += 1
    end
  end

  res
end
