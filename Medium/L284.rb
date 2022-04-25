# Below is the interface for Iterator, which is already defined for you.
#
# class Iterator
# 	def initialize(v)
#   
#   end
#
#   def hasNext()
#		Returns true if the iteration has more elements.
#   end
#
#   def next()
#   	Returns the next element in the iteration.
#   end
# end

class PeekingIterator
    # @param {Iterator} iter
  def initialize(iter)
    @iter = iter
    @next_int = iter.next() if iter.hasNext()
  end

    # Returns true if the iteration has more elements.
    # @return {boolean}
  def hasNext()
    !@next_int.nil?
  end

    # Returns the next element in the iteration.
    # @return {integer}
  def next()
    res = @next_int
    @next_int = @iter.hasNext() ? @iter.next() : nil
    
    res
  end

    # Returns the next element in the iteration without advancing the iterator.
    # @return {integer}
  def peek()
    @next_int
  end
end
