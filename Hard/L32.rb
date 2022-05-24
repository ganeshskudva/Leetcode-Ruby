# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  st = []
  max = 0
  left = -1

  (0..s.size - 1).each do |i|
    if s[i] == '('
      st << i
    else
      if st.empty?
        left = i
      else
        st.pop

        max = if st.empty?
                [max, i - left].max
              else
                [max, i - st[st.size - 1]].max
              end
      end
    end
  end

  max
end
