# @param {String} s
# @return {Integer}
def num_decodings(s)
  @mp = {}

  solve(s, 0)
end

def solve(s, idx)
  return 1 if idx == s.size

  return 0 if s[idx] == '0'

  return @mp[idx] if @mp.include?(idx)

  way = solve(s, idx + 1)

  way += solve(s, idx + 2) if idx < s.size - 1 && valid(s, idx)

  @mp[idx] = way
end

def valid(s, idx)
  s[idx] == '1' || s[idx] == '2' && (s[idx + 1] < '7' || s[idx + 1] == '*')
end
