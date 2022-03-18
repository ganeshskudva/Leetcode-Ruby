# @param {String} s
# @return {String}
def remove_duplicates(s)
  st = []
  s.each_char do |c|
    if st.empty?
      st.push(c)
    elsif st.last == c
      st.pop
      next
    else
      st.push(c)
    end
  end
  
  st.join
end
