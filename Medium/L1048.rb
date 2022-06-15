# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
  @mp = {}
  @dp = {}

  words.each do |w|
    @mp[w] = 1
  end

  cnt = -1 << 31
  words.each do |w|
    res = 1 + dfs(w)
    cnt = [cnt, res].max
  end

  cnt
end

def dfs(str)
  return 0 if str.empty?

  return @dp[str] if @dp.key?(str)

  max = 0
  (0..str.length - 1).each do |i|
    tmp = substring(str, i)
    res = 0
    res += 1 + dfs(tmp) if @mp.key?(tmp)

    max = [res, max].max
  end

  @dp[str] = max
  @dp[str]
end

def substring(s, idx)
  return s[1..-1] if idx.zero?

  return s.chop if idx == s.size - 1

  s[0..idx - 1] + s[idx + 1..-1]
end
