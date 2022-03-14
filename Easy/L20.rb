# @param {String} s
# @return {Boolean}
def is_valid(s)
  st = []

  chars = s.split('')
  chars.each do |c|
    case c
    when '('
      st.push(')')
    when '{'
      st.push('}')
    when '['
      st.push(']')
    else
      return false if st.length.zero? || (st.pop != c)
    end
  end

  st.length.zero?
end
