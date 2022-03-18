# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  mp = {}
  res = Array.new(nums1.length, -1)
  st = []

  nums2.each do |n|
    mp[st.pop] = n while !st.empty? && st.last < n
    st.push(n)
  end

  nums1.each_index do |idx|
    res[idx] = if mp.key?(nums1[idx])
                 mp[nums1[idx]]
               else
                 -1
               end
  end

  res
end
