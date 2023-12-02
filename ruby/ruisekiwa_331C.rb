N = gets.to_i
A = gets.chomp.split.map(&:to_i)

ans = {}
sum = 0

A.sort.each do |num|
  sum = sum + num
  ans[num] = sum
end


result = []
max = ans.values.last
A.each do |num|
  result << max - ans[num]
end

puts result.join(' ')
