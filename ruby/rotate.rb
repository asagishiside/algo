N = gets.chomp.to_i
A = []
N.times do |i|
  A.push(gets.chomp.split('').map(&:to_i))
end

arr = Array.new(N){[]}
N.times do |i|
  arr[i] = A[i].dup
end

(1...N).each do |i|
  arr[0][i] = A[0][i-1]
  arr[i][N-1] = A[i-1][N-1]
  arr[N-i-1][0] = A[N-i][0]
  arr[N-1][N-1-i] = A[N-1][N-i]
end
      

N.times do |i|
  puts arr[i].join("")
end