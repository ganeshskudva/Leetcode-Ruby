# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  return if nums.empty?

  ret = Array.new(nums.length)
  i = 0
  j = nums.length-1

  nums.each do |n|
    if n.odd?
      ret[j] = n
      j -= 1
    else
      ret[i] = n
      i += 1
    end
  end

  ret
end
