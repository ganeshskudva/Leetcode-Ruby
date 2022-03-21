# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  res = []
  return res if s.empty?

  mp = Hash.new { |h,k| h[k]=0 }
  right = 0
  size = 0

  s.each_char.with_index do |c, idx|
    mp[c] = idx
  end

  (0..s.length).each do |left|
    size += 1
    right = mp[s[left]] if mp[s[left]] > right

    if left == right
      res << size
      size = 0
    end
  end

  res
end
