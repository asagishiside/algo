D = gets.chomp.to_i
N = gets.chomp.to_i
sum = Array.new(D, 0)

(1..N).each do
  l, r = gets.chomp.split.map(&:to_i)
  sum[l-1] += 1
  if r < D
    sum[r] -= 1
  end
end

temp = 0
ans = sum.map do |s|
  temp += s
end

puts ans


# 入力
# 8
# 5
# 2 3
# 3 6
# 5 7
# 3 7
# 1 5