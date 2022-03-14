# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  mp = Hash.new(0)
  sum = 0

  nums.each do |n|
    mp[n] = mp[n] + 1

    if mp[n] == 1
      sum += n
    elsif mp[n] == 2
      sum -= n
    end
  end

  sum
end
