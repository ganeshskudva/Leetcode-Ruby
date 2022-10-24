# @param {String[]} arr
# @return {Integer}
def max_length(arr)
  @res = 0

  return @res if arr.empty?

  dfs(arr, "", 0)

  @res
end

def dfs(arr, path, idx)
  unique = unique?(path)
  @res = path.size if unique && path.size > @res

  return if idx == arr.size || !unique

  (idx..arr.size - 1).each do |i|
    dfs(arr, path + arr[i], i + 1)
  end
end

def unique?(s)
  mp = Hash.new(false)

  s.each_char do |c|
    return false if mp.include?(c)

    mp[c] = true
  end

  true
end
