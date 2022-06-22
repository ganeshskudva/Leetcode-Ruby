# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
  return false if s.size != goal.size

  unique_s = Set.new
  s.each_char do |c|
    unique_s << c
  end
  return true if unique_s.size < s.size && s == goal

  diff = []
  i = 0
  while i < s.size && diff.size <= 4
    if s[i] != goal[i]
      diff << s[i]
      diff << goal[i]
    end
    i += 1
  end

  diff.size == 4 && diff[0] == diff[3] && diff[1] == diff[2]
end
