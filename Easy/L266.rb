# @param {String} s
# @return {Boolean}
def can_permute_palindrome(s)
  st = Set.new
  s.each_char do |c|
    if st.include?(c)
      st.delete(c)
    else
      st << c
    end
  end

  st.size <= 1
end
