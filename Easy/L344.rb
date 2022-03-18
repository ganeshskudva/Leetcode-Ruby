# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  return if s.empty?

  st = 0
  finish = s.length - 1
  while st <= finish
    tmp = s[st]
    s[st] = s[finish]
    s[finish] = tmp
    st += 1
    finish -= 1
  end
end
