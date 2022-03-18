# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  last_index = Array.new(26, 0)
  s.each_char.with_index do |c, idx|
    last_index[c.ord - 'a'.ord] = idx
  end

  stack = []
  seen = Array.new(26, false)

  s.each_char.with_index do |c, idx|
    curr = c.ord - 'a'.ord
    next if seen[curr]

    seen[stack.pop] = false while !stack.empty? && stack.last > curr && idx < last_index[stack.last]
    stack.push(curr)
    seen[curr] = true
  end

  resp = ''
  resp += (stack.pop + 'a'.ord).chr until stack.empty?

  resp.reverse!
end
