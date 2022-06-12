# @param {Integer} n
# @return {Integer}
def count_triples(n)
  sq = Set.new
  (1..n).each do |n|
    sq << n * n
  end

  ans = 0
  (1..n).each do |i|
    j = i + 1
    while i * i + j * j <= n * n
      ans += 2 if sq.include?(i * i + j * j)
      j += 1
    end
  end

  ans
end
