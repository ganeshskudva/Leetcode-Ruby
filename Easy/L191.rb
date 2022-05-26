# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(num)
  count = 0

  while num > 0
    num = num & ( num - 1 )
    count += 1
  end

  count
end
