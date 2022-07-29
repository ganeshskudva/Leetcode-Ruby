# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  res = []

  words.each do |word|
    res << word if match(word, pattern)
  end

  res
end

def match(word, pattern)
  word_map = {}
  pattern_map = {}

  (0..word.size - 1).each do |i|
    word_map[word[i]] = pattern[i] unless word_map.include?(word[i])
    pattern_map[pattern[i]] = word[i] unless pattern_map.include?(pattern[i])

    return false if word_map[word[i]] != pattern[i] || pattern_map[pattern[i]] != word[i]
  end

  true
end
