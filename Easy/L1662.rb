# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
  idx1 = 0
  idx2 = 0
  arr_idx1 = 0
  arr_idx2 = 0

  while arr_idx1 < word1.size && arr_idx2 < word2.size
    return false if word1[arr_idx1][idx1].chr != word2[arr_idx2][idx2].chr

    if idx1 == word1[arr_idx1].size - 1
      idx1 = 0
      arr_idx1 += 1
    else
      idx1 += 1
    end

    if idx2 == word2[arr_idx2].size - 1
      idx2 = 0
      arr_idx2 += 1
    else
      idx2 += 1
    end
  end

  arr_idx1 == word1.size && arr_idx2 == word2.size
end
