# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  ret = Array.new(2)
  mp = {}

  nums.each do |n|
    ret[0] = n if mp.include?(n)
    mp[n] = true
  end

  (1..nums.size).each do |i|
    ret[1] = i unless mp.include?(i)
  end

  ret
end
