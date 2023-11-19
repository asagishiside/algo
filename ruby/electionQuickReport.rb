N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
map = {}
(1..N).map { |i| map[i] = 0}

max = 0
top = nil

(0...M).each do |i|
  map[A[i]] += 1
  if map[A[i]] > max
    max = map[A[i]]
    top = A[i]
  elsif map[A[i]] == max
    top = [top, A[i]].min
  end
  puts top
end