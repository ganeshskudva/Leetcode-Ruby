# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  dict = Array.new(26, 0)
  s.each_char do |c|
    dict[c.ord - 'a'.ord] += 1
  end

  t.each_char do |c|
    dict[c.ord - 'a'.ord] -= 1
    return false if dict[c.ord - 'a'.ord].negative?
  end

  dict.each do |i|
    return false unless dict[i].zero?
  end

  true
end
