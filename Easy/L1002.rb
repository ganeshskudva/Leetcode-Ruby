# @param {String[]} words
# @return {String[]}
def common_chars(words)
  res = []
  count = Array.new(26, Float::INFINITY)

  words.each do |w|
    cnt = Array.new(26, 0)
    w.each_char do |ch|
      cnt[ch.ord - 'a'.ord] += 1
    end
    (0..25).each do |idx|
      count[idx] = [count[idx], cnt[idx]].min
    end
  end

  ('a'..'z').each_entry do |ch|
    (0..count[ch.ord - 'a'.ord] - 1).each do
      res << ch
    end
  end

  res
end
