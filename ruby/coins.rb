A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i
count = 0
(0..A).each do |i|
  (0..B).each do |j|
    (0..C).each do |k|
      count += 1 if D == 500 * i + 100 * j + 50 * k
    end
  end
end

puts count

# 2
# 2
# 2
# 100
