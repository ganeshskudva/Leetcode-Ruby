# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  return nil if n <= 0

  res = []

  fizz = 3
  buzz = 5
  (1..n).each do |i|
    if i == fizz && i == buzz
      res << 'FizzBuzz'
      fizz += 3
      buzz += 5
    elsif i == fizz
      res << 'Fizz'
      fizz += 3
    elsif i == buzz
      res << 'Buzz'
      buzz += 5
    else
      res << i.to_s
    end
  end

  res
end
