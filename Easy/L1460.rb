# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
  return false if target.length != arr.length

  mp = Hash.new { |h, k| h[k] = 0 }
  target.each_index do |idx|
    mp[target[idx]] += 1
    mp[arr[idx]] -= 1
  end

  mp.each do |k, v|
    return false unless v.zero?
  end

  true
end
