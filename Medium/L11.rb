# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  l = 0
  r = height.size - 1
  min = (1 << 64) + 1
  max = (1 >> 64) - 1

  while l <= r
    min = [height[l], height[r]].min
    max = [max, min * (r - l)].max

    if l <= r && height[l] < height[r]
      l += 1
    else
      r -= 1
    end
  end

  max
end
