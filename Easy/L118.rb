# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  res = Array.new(num_rows)

  (0..num_rows - 1).each do |i|
    res[i] = Array.new(i + 1)
    res[i][0] = 1
    res[i][i] = 1
    (1..i - 1).each do |j|
      res[i][j] = res[i - 1][j - 1] +res[i - 1][j]
    end
  end

  res
end
