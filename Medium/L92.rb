# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
  return head if head.nil? || left == right

  start_prev = nil
  curr = head
  (1..left - 1).each do |i|
    start_prev = curr
    curr = curr.next
  end

  start_list = curr
  curr = head
  (1..right - 1).each do |i|
    curr = curr.next
  end
  end_list = curr
  end_next = curr.next
  reverse(start_list, end_list, left, right)
  if start_prev.nil?
    return end_list if end_next.nil?

    start_list.next = end_next
    return end_list
  end

  start_prev.next = end_list
  start_list.next = end_next

  head
end

def reverse(start_list, end_list, left, right)
  prev = nil
  curr = start_list

  (left..right).each do |i|
    tmp = curr
    curr = curr.next
    tmp.next = prev
    prev = tmp
  end
end
