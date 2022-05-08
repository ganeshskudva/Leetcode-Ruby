# This is the interface that allows for creating nested lists.
# You should not implement it, or speculate about its implementation
#
#class NestedInteger
#    def is_integer()
#        """
#        Return true if this NestedInteger holds a single integer, rather than a nested list.
#        @return {Boolean}
#        """
#
#    def get_integer()
#        """
#        Return the single integer that this NestedInteger holds, if it holds a single integer
#        Return nil if this NestedInteger holds a nested list
#        @return {Integer}
#        """
#
#    def get_list()
#        """
#        Return the nested list that this NestedInteger holds, if it holds a nested list
#        Return nil if this NestedInteger holds a single integer
#        @return {NestedInteger[]}
#        """

class NestedIterator
    # @param {NestedInteger[]} nested_list
    def initialize(nested_list)
      @arr = []
      @idx = 0
      dfs(nested_list)
    end

    # @return {Boolean}
    def has_next
      @idx < @arr.size
    end

    # @return {Integer}
    def next
      val = -1

      if has_next
        val = @arr[@idx]
        @idx += 1
      end

      val
    end

    def dfs(nested_list)
      return if nested_list.nil?

      (0..nested_list.size - 1).each do |i|
        if nested_list[i].is_integer()
          @arr << nested_list[i].get_integer()
        else
          dfs(nested_list[i].get_list())
        end
      end
    end
end

# Your NestedIterator will be called like this:
# i, v = NestedIterator.new(nested_list), []
# while i.has_next()
#    v << i.next
# end
