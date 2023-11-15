N = gets.chomp.to_i
ans = 0
obj = {}

S = (0...N).map do |i|
  gets.chomp.to_s
end

(0...N).each do |i|
  rev = S[i].reverse
  unless obj[S[i]] && obj[rev]
    ans += 1
    obj[S[i]] = true
    obj[rev] = true
  end
end


print(ans)

