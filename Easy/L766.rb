# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  (0..matrix.size - 2).each do |i|
    (0..matrix[i].size - 2).each do |j|
      return false if matrix[i][j] != matrix[i + 1][j + 1]
    end
  end

  true
end
