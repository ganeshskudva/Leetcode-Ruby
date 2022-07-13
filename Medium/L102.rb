def level_order(root)
  return [] if root.nil?

  res = []
  q = [root]

  until q.empty?
    size = q.size
    tmp = []
    while size.positive?
      size -= 1
      curr = q.shift
      tmp << curr.val

      q << curr.left unless curr.left.nil?
      q << curr.right unless curr.right.nil?
    end
    res << tmp
  end

  res
end
