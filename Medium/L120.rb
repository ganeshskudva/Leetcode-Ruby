# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  n = triangle.size
  @dp = Array.new(n+1)
  (0..n).each do |i|
    @dp[i] = Array.new(n+1)
    (0..n).each do |j|
      @dp[i][j] = -1
    end
  end

  count(triangle, 0, 0)
end

def is_valid(triangle, i, j)
  m = triangle.length

  return false if i.negative? || i >= m

  n = triangle[i].length
  return false if j.negative? || j >= n

  true
end

def count(triangle, i, j)
  return 0 unless is_valid(triangle, i, j)

  return @dp[i][j] if @dp[i][j] != -1

  @dp[i][j] = triangle[i][j] + [count(triangle, i + 1, j), count(triangle, i + 1, j + 1)].min

  @dp[i][j]
end
