# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  return [] if numbers.empty?

  ret = Array.new(2, 0)

  (0..numbers.size - 1).each do |i|
    idx = binary_search(numbers, i + 1, numbers.size - 1, target - numbers[i])
    if idx != -1
      ret[0] = i + 1
      ret[1] = idx + 1
      break
    end
  end

  ret
end

def binary_search(arr, left, right, target)
  while left <= right
    mid = left + (right - left) / 2

    return mid if arr[mid] == target

    if arr[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  -1
end
