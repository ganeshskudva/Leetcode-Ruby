# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  m = word1.size
  n = word2.size
  @dp = Array.new(m+1)
  (0..m).each do |i|
    @dp[i] = Array.new(n+1)
    (0..n).each do |j|
      @dp[i][j] = -1
    end
  end

  solve(word1, word2, 0, 0)
end

def solve(w1, w2, p1, p2)
  m = w1.size
  n = w2.size

  return n - p2 if p1 == m

  return m - p1 if p2 == n

  return @dp[p1][p2] if @dp[p1][p2] != -1

  @dp[p1][p2] = if w1[p1] == w2[p2]
                  solve(w1, w2, p1 + 1, p2 + 1)
                else
                  1 + [solve(w1, w2, p1 + 1, p2), solve(w1, w2, p1, p2 + 1)].min
  end

  @dp[p1][p2]
end
