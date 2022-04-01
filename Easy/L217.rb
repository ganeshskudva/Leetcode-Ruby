# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  return false if nums.empty?

  st = Set.new
  nums.each do |n|
    st << n
  end

  st.size != nums.size
end
