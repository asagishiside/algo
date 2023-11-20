N, M = gets.chomp.split.map(&:to_i)
C = gets.chomp.split
D = gets.chomp.split
P = gets.chomp.split.map(&:to_i)
color = Hash.new(0)
price = 0
(0...M).each do |m|
  color[D[m]] = P[m+1]
end

(0...N).each do |i|
  if color.key?(C[i])
    price += color[C[i]]
  else 
    price += P[0]
  end
end

print price