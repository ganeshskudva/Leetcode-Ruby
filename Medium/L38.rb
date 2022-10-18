# @param {Integer} n
# @return {String}
def count_and_say(n)
  seq = ''
  (0..n - 1).each do |i|
    seq = helper(seq)
  end

  seq
end

def helper(prev)
  return '1' if prev.empty?

  res = []
  count = 1
  (1..prev.size - 1).each do |i|
    if prev[i] == prev[i - 1]
      count += 1
    else
      res << count.to_s
      res << prev[i - 1]
      count = 1
    end
  end

  res << count.to_s
  res << prev[prev.size - 1]

  res.join('')
end
