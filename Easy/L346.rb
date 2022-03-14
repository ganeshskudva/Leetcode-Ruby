class MovingAverage
  @q
  @capacity
  @curr_sum
  #     :type size: Integer
  def initialize(size)
    @q = Array.new
    @capacity = size
    @curr_sum = 0.0
  end

  #     :type val: Integer
  #     :rtype: Float
  def next(val)
    @curr_sum += val
    @q.push(val)

    if @q.length > @capacity
      @curr_sum -= @q.shift.to_f
    end

    @curr_sum / @q.length
  end
end

# Your MovingAverage object will be instantiated and called as such:
# obj = MovingAverage.new(size)
# param_1 = obj.next(val)
