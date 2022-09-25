# @param {Integer} n
# @return {Integer}
def fib(n)
  @mp = { 0 => 0, 1 => 1, 2 => 1}

  solve(n)
end

def solve(n)
  return @mp[n] if @mp.include?(n)

  @mp[n] = solve(n - 1) + solve(n - 2)
end
