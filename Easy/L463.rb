# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  cnt = 0
  dirs = [[0, 1], [1, 0], [0, -1], [-1, 0]]

  grid.each_with_index do |row, i|
    row.each_with_index do |col, j|
      next if grid[i][j].to_i.zero?

      dirs.each do |d|
        x = i + d[0]
        y = j + d[1]
        cnt += 1 if valid(grid, x, y)
      end
    end
  end

  cnt
end

def valid(grid, row, col)
  m = grid.length
  n = grid[0].length

  row.negative? || col.negative? || row == m || col == n || grid[row][col].zero?
end
