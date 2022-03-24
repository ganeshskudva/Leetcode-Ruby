# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  return 0 if people.empty?

  boat_cnt = 0
  left = 0
  right = people.size - 1
  people.sort!

  while left <= right
    sum = people[left] + people[right]

    left += 1 if sum <= limit
    boat_cnt += 1
    right -= 1
  end

  boat_cnt
end
