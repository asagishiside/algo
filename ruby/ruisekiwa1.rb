N, X = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
A.each do |a|
  if a == X
    puts "Yes"
    return
  end
end

puts "No"

# 入力
# 10 5
# 8 6 9 1 2 1 10 100 1000 10000
# 2 3
# 1 4
# 3 9
# 6 8
# 1 10