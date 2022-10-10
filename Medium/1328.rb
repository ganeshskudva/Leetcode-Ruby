# @param {String} palindrome
# @return {String}
def break_palindrome(palindrome)
  return "" if palindrome.size == 1

  s = palindrome.dup
  (0..s.size/2 - 1).each do |i|
    if s[i].chr != 'a'
      s[i] = 'a'
      return s
    end
  end

  s[s.size - 1] = 'b'
  s
end
