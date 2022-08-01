# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  @dp = Array.new(m + 1) { Array.new(n + 1, -1) }

  solve(0, 0, m, n)
end

def valid?(i, j, m, n)
  i >= 0 && i < m && j >= 0 && j < n
end

def solve(i, j, m, n)
  return 0 unless valid?(i, j, m, n)

  return 1 if i == m - 1 && j == n - 1

  return @dp[i][j] if @dp[i][j] != -1

  @dp[i][j] = solve(i + 1, j, m, n) + solve(i, j + 1, m, n)
  @dp[i][j]
end
