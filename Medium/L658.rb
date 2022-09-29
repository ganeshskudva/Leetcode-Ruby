# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def find_closest_elements(arr, k, x)
  lo = 0
  hi = arr.size - 1
  while hi - lo >= k
    if (arr[lo] - x).abs > (arr[hi] - x).abs
      lo += 1
    else
      hi -= 1
    end
  end

  res = []
  (lo..hi).each do |i|
    res << arr[i]
  end

  res
end
