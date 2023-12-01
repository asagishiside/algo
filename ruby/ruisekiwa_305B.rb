p,q = gets.chomp.split
obj = {
  "A" => 0,
  "B" => 1,
  "C" => 2,
  "D" => 3,
  "E" => 4,
  "F" => 5,
  "G" => 6
}
arr = [0,3,1,4,1,5,9]
sum = [0]
(1...7).each do |i|
  sum.push(sum[i-1] + arr[i])
end

min = [obj[p],obj[q]].min
max = [obj[p],obj[q]].max
ans = sum[max] - sum[min]
puts ans