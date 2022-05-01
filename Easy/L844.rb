# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  solve(s) == solve(t)
end

def solve(str)
  cnt = 0
  res = ''

  str.reverse.each_char do |c|
    if c == '#'
      cnt += 1
    else
      if cnt.positive?
        cnt -= 1
      else
        res += c
      end
    end
  end

  res
end
