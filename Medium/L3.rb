# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s.empty?

  mp = {}
  maxi = 0

  i = 0
  j = 0
  while i < s.size do
    j = [j, mp[s[i]] + 1].max if mp.key?(s[i])

    mp[s[i]] = i
    maxi = [maxi, i - j + 1].max
    i += 1
  end

  maxi
end
