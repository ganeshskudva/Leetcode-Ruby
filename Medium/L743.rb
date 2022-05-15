# @param {Integer[][]} times
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def network_delay_time(times, n, k)
  max_int = 1 << 64
  min_int = (-1 * (1 << 64)) - 1
  dist = Array.new(n + 1)
  (1..dist.size - 1).each do |i|
    dist[i] = max_int
  end
  dist[k] = 0

  (1..n - 1).each do |i|
    times.each do |t|
      source = t[0]
      dest = t[1]
      weight = t[2]
      dist[dest] = dist[source] + weight if dist[source] != max_int && dist[source] + weight < dist[dest]
    end
  end

  max_val = min_int
  (1..dist.size - 1).each do |i|
    return -1 if dist[i] == max_int

    max_val = [max_val, dist[i]].max
  end

  max_val
end
