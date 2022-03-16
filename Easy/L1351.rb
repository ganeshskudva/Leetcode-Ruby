# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
  res = 0
  grid.each do |row|
    res += binary_search(row)
  end

  res
end

def binary_search(row)
  l = 0
  r = row.length

  while l < r
    m = l + (r - l) / 2
    if (row[m]).negative?
      r = m
    else
      l = m + 1
    end
  end

  row.length - l
end
