D = gets.chomp.to_i
x = 0
min = D

while x * x <= D
  y = Math.sqrt(D - (x*x)).to_i
  m = ((x * x) + (y * y) - D).abs
  m1 = ((x * x) + (y+1)**2 - D).abs
  min = [min, m, m1].min
  x +=1
end

puts min