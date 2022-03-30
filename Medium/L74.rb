# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix.empty?

  m = matrix.size
  n = matrix[0].size

  (0..m - 1).each do |i|
    return true if matrix[i][n - 1] == target

    return bin_search(matrix[i], target) if matrix[i][n - 1] > target
  end

  false
end

def bin_search(nums, tgt)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = left + (right - left) / 2
    return true  if nums[mid] == tgt

    if nums[mid] < tgt
      left = mid + 1
    else
      right = mid - 1
    end
  end

  false
end
