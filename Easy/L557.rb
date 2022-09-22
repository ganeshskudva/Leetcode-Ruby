# @param {String} s
# @return {String}
def reverse_words(s)
  words = s.split(' ')
  ret = []

  words.each do |w|
    ret << w.reverse
  end

  ret.join(' ')
end
