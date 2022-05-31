# @param {String} s
# @param {Integer} k
# @return {Boolean}
def has_all_codes(s, k)
  str_size = s.size
  code_len = k
  dict = Set.new


  start = 0
  while start < str_size - code_len + 1
    cur_code = s[start..start + code_len - 1]
    dict << cur_code
    start += 1
  end

  dict.size == 1 << k
end
