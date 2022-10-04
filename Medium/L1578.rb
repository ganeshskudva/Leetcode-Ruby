# @param {String} colors
# @param {Integer[]} needed_time
# @return {Integer}
def min_cost(colors, needed_time)
  res = 0
  prev = needed_time[0]

  (1..colors.size - 1).each do |i|
    if colors[i] == colors[i - 1]
      res += [needed_time[i], prev].min
      prev = [needed_time[i], prev].max
    else
      prev = needed_time[i]
    end
  end

  res
end
