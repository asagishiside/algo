N = gets.chomp.to_i
S = []
N.times do |i|
  S.push(gets.chomp.to_s)
end

N.times do |i|
  (0...N).each do |j|
    if i == j
      next
    end
    ss = S[i] + S[j]
    # if S[i] + S[j] == (S[i] + S[j]).reverse # これだと遅い
    if ss == ss.reverse
      puts 'Yes'
      return
    end
  end
end
puts 'No'