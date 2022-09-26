class MyCircularQueue

    #     :type k: Integer
  def initialize(k)
    @q = Array.new(k)
    @cap = k
    @front = 0
    @rear = -1
    @len = 0
  end

    #     :type value: Integer
    #     :rtype: Boolean
  def en_queue(value)
    return false if is_full

    @rear = (@rear + 1) % @cap
    @q[@rear] = value
    @len += 1
    true
  end

    #     :rtype: Boolean
  def de_queue
    return false if is_empty

    if @front == @rear
      @front = 0
      @rear = -1
    else
      @front = (@front + 1) % @cap
    end

    @len -= 1
    true
  end

    #     :rtype: Integer
  def front
    return -1 if is_empty

    @q[@front]
  end

    #     :rtype: Integer
  def rear
    return -1 if is_empty

    @q[@rear]
  end

    #     :rtype: Boolean
  def is_empty
    @len.zero?
  end

    #     :rtype: Boolean
  def is_full
    @len == @cap
  end


end

# Your MyCircularQueue object will be instantiated and called as such:
# obj = MyCircularQueue.new(k)
# param_1 = obj.en_queue(value)
# param_2 = obj.de_queue()
# param_3 = obj.front()
# param_4 = obj.rear()
# param_5 = obj.is_empty()
# param_6 = obj.is_full()
