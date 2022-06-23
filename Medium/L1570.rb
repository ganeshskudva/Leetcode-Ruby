class SparseVector
  attr_accessor :mp
  #     :type nums: Integer[]
  def initialize(nums)
    @mp = {}

    (0..nums.size - 1).each do |i|
      @mp[i] = nums[i]
    end
  end

  # Return the dotProduct of two sparse vectors
  #     :type vec: SparseVector
  #     :rtype: Integer
  def dotProduct(vec)
    sum = 0
    @mp.each_key do |k|
      sum += @mp[k] * vec.mp[k] if vec.mp.key?(k)
    end

    sum
  end
end
