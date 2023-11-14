N, M = gets.chomp.split.map(&:to_i)
P = []
C = []
F = []
(1..N).each do |i|
  p, c, *f = gets.chomp.split.map(&:to_i)
  P.push(p)
  C.push(c)
  F.push(f)
end

(0...N).each do |i|
  (0...N).each do |j|
    if P[i] >= P[j] && F[i].all? {|f| F[j].include?(f) } && (P[i] > P[j] || C[j] > C[i])
      print("Yes")
      exit
    end
  end
end

print("No")

