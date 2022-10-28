# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  ans = []
  return ans if strs.empty?

  mp = Hash.new { |h, k| h[k] = [] }
  strs.each do |s|
    k = key(s)
    mp[k] << s
  end

  mp.each do |k, v|
    ans << v
  end

  ans
end

def key(s)
  arr = Array.new(26, 0)
  res = []

  s.each_char do |c|
    idx = c.ord - 'a'.ord
    arr[c.ord - 'a'.ord] += 1
  end

  arr.each do |v|
    res << v.to_s
  end

  res.join(',')
end
