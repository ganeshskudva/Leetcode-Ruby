class NumArray

  class SegmentTree
    attr_accessor :start_idx, :end_idx, :sum, :left, :right

    def initialize(start_idx, end_idx, sum = 0, left = nil, right = nil)
      @start_idx = start_idx
      @end_idx = end_idx
      @sum = sum
      @left = left
      @right = right
    end
  end

  #     :type nums: Integer[]
  def initialize(nums)
    @root = build_tree(nums, 0, nums.size - 1)
  end

  #     :type index: Integer
  #     :type val: Integer
  #     :rtype: Void
  def update(index, val)
    update_helper(@root, index, val)
  end

  #     :type left: Integer
  #     :type right: Integer
  #     :rtype: Integer
  def sum_range(left, right)
    sum_range_helper(@root, left, right)
  end

  private

  def build_tree(nums, start_idx, end_idx)
    return nil if start_idx > end_idx

    ret = SegmentTree.new(start_idx, end_idx)
    if start_idx == end_idx
      ret.sum = nums[start_idx]
    else
      mid = start_idx + (end_idx - start_idx) / 2
      ret.left = build_tree(nums, start_idx, mid)
      ret.right = build_tree(nums, mid + 1, end_idx)
      ret.sum = ret.left.sum + ret.right.sum
    end

    ret
  end

  def update_helper(root, pos, val)
    if root.start_idx == root.end_idx
      root.sum = val
    else
      mid = root.start_idx + (root.end_idx - root.start_idx) / 2
      if pos <= mid
        update_helper(root.left, pos, val)
      else
        update_helper(root.right, pos, val)
      end

      root.sum = root.left.sum + root.right.sum
    end
  end

  def sum_range_helper(root, start_idx, end_idx)
    return root.sum if root.end_idx == end_idx && root.start_idx == start_idx

    mid = root.start_idx + (root.end_idx - root.start_idx) / 2
    return sum_range_helper(root.left, start_idx, end_idx) if end_idx <= mid
    return sum_range_helper(root.right, start_idx, end_idx) if start_idx >= mid + 1

    sum_range_helper(root.left, start_idx, mid) + sum_range_helper(root.right, mid + 1, end_idx)
  end
end
