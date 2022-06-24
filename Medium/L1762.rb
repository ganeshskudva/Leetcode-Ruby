# @param {Integer[]} heights
# @return {Integer[]}
def find_buildings(heights)
  res = []
  max = 0

  (heights.size - 1).downto(0).each do |i|
    if heights[i] > max
      max = heights[i]
      res << i
    end
  end

  res.reverse
end
