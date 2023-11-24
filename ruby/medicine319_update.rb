N, K = gets.chomp.split.map(&:to_i)

ab = Array.new(N) {gets.chomp.split.map(&:to_i)}.sort_by(&:first)
sum = ab.sum(&:last)

if sum <= K
  puts 1
  exit
end

ab.each do |i|
  sum -= i[1]
  if sum <= K
    puts i[0] + 1
    exit
  end
end
