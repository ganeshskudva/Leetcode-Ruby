# @param {Integer} start_value
# @param {Integer} target
# @return {Integer}
def broken_calc(start_value, target)
  return start_value - target if start_value >= target

  return 1 + broken_calc(start_value, target + 1) if target.to_i.odd?

  1 + broken_calc(start_value, target / 2)
end
