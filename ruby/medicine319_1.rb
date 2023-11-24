N, K = gets.chomp.split.map(&:to_i)
AB = []
sum = 0
N.times do |i|
  AB[i] = gets.chomp.split.map(&:to_i)
  sum += AB[i][1]
end

ab = AB.sort

k = sum - K
a = 0

if k <= 0
  puts 1
  exit
end

if ab[0][1] >= k
  puts ab[0][0] + 1
  exit
end

if sum == K
  puts ab[AB.size - 1][0] + 1
  exit
end

ab.each do |i|
  a += i[1]
  if a >= k
    puts i[0] + 1
    exit
  end
end
