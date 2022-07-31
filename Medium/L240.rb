# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty?

  found = false
  matrix.each do |m|
    if target >= m[0] && target <= m[m.size - 1]
      found = bin_search(m, 0, m.size - 1, target)
      return found if found
    end
  end

  found
end

def bin_search(arr, low, high, tgt)
  while low <= high
    mid = low + (high - low) / 2
    return true if arr[mid] == tgt

    if tgt < arr[mid]
      high = mid - 1
    else
      low = mid + 1
    end
  end

  false
end
