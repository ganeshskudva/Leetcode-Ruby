# @param {Integer} k
# @return {String}
def get_smallest_string(n, k)
  res = Array.new(n, 'a')
  k -= n
  i = n - 1

  while k.positive?
    k += 1
    if k / 26 >= 1
      res[i] = 'z'
      k -= 26
      i -= 1
    else
      res[i] = (k + 96).chr
      k = 0
    end
  end

  res.join
end
