# @param {Integer} k
# @param {Integer} n
# @return {Integer[][]}
def combination_sum3(k, n)
  @ans = []
  @tmp = []
  @arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  back_track(k, n, 0)

  @ans
end

def back_track(k, target, start)
  if @tmp.size == k && target.zero?
    @ans << Marshal.load( Marshal.dump(@tmp) )
    return
  end

  return if target.negative?

  (start..@arr.size - 1).each do |i|
    @tmp << @arr[i]
    back_track(k, target - @arr[i], i + 1)
    @tmp.pop
  end
end
