N, X = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
A.sort!
max = A.pop()
min = A.shift()
SUM = A.sum
need = X - SUM

if need > max
  print -1
elsif need > min
  print(need)
elsif need <= min
  print 0
else
  print -1
end