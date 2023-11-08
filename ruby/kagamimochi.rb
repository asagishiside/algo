N = gets.chomp.to_i
arr = []
(1..N).each do
  arr.push(gets.chomp.split.map(&:to_i))
end
print(arr.uniq.length)