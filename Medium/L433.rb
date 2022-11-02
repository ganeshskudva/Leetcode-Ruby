# @param {String} start
# @param {String} end
# @param {String[]} bank
# @return {Integer}
def min_mutation(start_str, end_str, bank)
  dfs(start_str, end_str, bank, Set.new)
end

def dfs(start_str, end_str, bank, st)
  fixnum_max = (2**(0.size * 8 - 2) - 1)

  return 0 if start_str == end_str

  minimum = fixnum_max
  bank.each do |b|
    diff = 0
    (0..start_str.size - 1).each do |i|
      diff += 1 if start_str[i].chr != b[i].chr
      break if diff > 1
    end

    next unless diff == 1 && !st.include?(b)

    st << b
    h = dfs(b, end_str, bank, st)
    minimum = [minimum, 1 + h].min if h >= 0
    st.delete(b)
  end

  minimum == fixnum_max ? -1 : minimum
end
