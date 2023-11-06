N, Q = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

SUM = [0]
temp = 0
A.each do |a|
  SUM.push(temp+=a)
end

Q.times do |i|
  l, r = gets.chomp.split.map(&:to_i)
  puts SUM[r] - SUM[l - 1]
end

# 入力
# 10 5
# 8 6 9 1 2 1 10 100 1000 10000
# 2 3
# 1 4
# 3 9
# 6 8
# 1 10