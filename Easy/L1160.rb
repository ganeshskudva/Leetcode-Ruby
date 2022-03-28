# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  res = 0
  cnt = Array.new(26, 0)

  (0..chars.size - 1).each do |i|
    cnt[chars[i].ord - 'a'.ord] += 1
  end

  words.each do |word|
    match = true
    tmp = cnt.clone

    word.each_char do |ch|
      tmp[ch.ord - 'a'.ord] -= 1

      if tmp[ch.ord - 'a'.ord].negative?
        match = false
        break
      end
    end

    res += word.size if match
  end

  res
end
