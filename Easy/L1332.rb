# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  return 0 if s.empty?

  s == s.reverse ? 1 : 2
end
