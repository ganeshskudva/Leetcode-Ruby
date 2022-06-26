# @param {Integer[]} card_points
# @param {Integer} k
# @return {Integer}
def max_score(card_points, k)
  return 0 if card_points.size.zero? || k <= 0

  return card_points.sum if k == card_points.size

  max_points = -(2**(0.size * 8 - 2))

  left = Array.new(k + 1, 0)
  (1..k).each do |i|
    left[i] = left[i - 1] + card_points[i - 1]
  end

  right = Array.new(k + 1, 0)
  (1..k).each do |i|
    right[i] = right[i - 1] + card_points[card_points.size - i]
  end

  (0..k).each do |i|
    max_points = [max_points, left[i] + right[k - i]].max
  end

  max_points
end
