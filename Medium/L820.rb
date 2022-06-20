# @param {String[]} words
# @return {Integer}
def minimum_length_encoding(words)
  return 0 if words.size == 0

  mp = Set.new
  words.each do |w|
    mp << w
  end

  mp.each do |w|
    (1..w.size - 1).each do |i|
      s = w[i..-1]
      mp.delete(s)
    end
  end

  sum = 0
  mp.each do |w|
    sum += w.size + 1
  end

  sum
end
