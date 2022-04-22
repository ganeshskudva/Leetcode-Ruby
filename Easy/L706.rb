class MyHashMap
    def initialize()
      @map = Array.new(1000001, -1)
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
      @map[key] = value
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
      @map[key]
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
      @map[key] = -1
    end

end
