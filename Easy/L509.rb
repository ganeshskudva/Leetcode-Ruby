# @param {Integer} n
# @return {Integer}
def fib(n)
  mp = {}
  mp[0] = 0
  mp[1] = 1
  mp[2] = 1

  solve(mp, n)
end

def solve(mp, n)
  return mp[n] if mp.key?(n)

  mp[n] = solve(mp, n - 1) + solve(mp, n - 2)
end
