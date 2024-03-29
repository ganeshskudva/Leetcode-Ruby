# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  return '' if t.size > s.size

  fixnum_max = (2**(0.size * 8 - 2) - 1)
  mp = Hash.new(0)
  t.each_char do |c|
    mp[c] += 1
  end

  begin_ptr = 0
  end_ptr = 0
  counter = mp.size
  len = fixnum_max
  head = 0
  
  while end_ptr < s.size
    ch = s[end_ptr].chr
    if mp.include?(ch)
      mp[ch] -= 1
      counter -= 1 if mp[ch].zero?
    end
    end_ptr += 1
    
    while counter.zero?
      tmp = s[begin_ptr].chr
      if mp.include?(tmp)
        mp[tmp] += 1
        counter += 1 if mp[tmp].positive?
      end

      if end_ptr - begin_ptr < len
        len = end_ptr - begin_ptr
        head = begin_ptr
      end
      begin_ptr += 1
    end
  end

  len == fixnum_max ? '' : s[head..head + len]
end
