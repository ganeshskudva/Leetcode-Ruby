# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  st = []
  pop_counter = 0

  pushed.each_with_index do |item, index|
    st.push(item)
    while !st.empty? && popped[pop_counter] == st.last
      st.pop
      pop_counter += 1
      break if pop_counter == popped.length
    end
  end

  st.empty?
end
