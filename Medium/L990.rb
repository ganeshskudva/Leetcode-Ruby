# @param {String[]} equations
# @return {Boolean}
def equations_possible(equations)
  @root = Arrays.new(26)

  (0..25).each do |i|
    @root[i] = i
  end

  equations.each do |e|
    @root[union_find(e[0] - 'a')] = union_find(e[3] - 'a') if e[1] == '='
  end

  equations.each do |e|
    return false if e[1] == '!' && union_find(e[0] - 'a') == union_find(e[3] - 'a')
  end

  true
end

def union_find(x)
  @root[x] = union_find(@root[x]) if x != @root[x]

  @root[x]
end
