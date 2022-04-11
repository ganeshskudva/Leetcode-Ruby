# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  r = grid.length
  c = grid[0].length
  n = r * c
  sh = k % n

  res = Marshal.load(Marshal.dump(grid))

  reverse(res, 0, n - sh)
  reverse(res, n - sh, n)
  reverse(res, 0, n)

  res
end

def reverse(grid, lo, hi)
  while lo < hi
    hi -= 1
    swap(grid, lo, hi)
    lo += 1
  end
end

def swap(grid, lo, hi)
  n = grid[0].size
  tmp = grid[lo / n][lo % n]
  grid[lo / n][lo % n] = grid[hi / n][hi % n]
  grid[hi / n][hi % n] = tmp
end
