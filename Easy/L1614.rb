# frozen_string_literal: true

def max_depth(s)
  return max if s.nil?

  cnt = 0
  max = 0
  s.chars.each do |c|
    if c == '('
      cnt += 1
    elsif c == ')'
      cnt -= 1
    end
    max = cnt > max ? cnt : max
  end
  max
end
