N, A, B = gets.chomp.split(" ").map(&:to_i)
ans = []
for n in (1..N) do
  sum = 0
  
  n.to_s.split('').each do |s|
    sum += s.to_i
  end
  
  if sum <= B && sum >= A
    ans.push(n)
  end
end

print(ans.sum)

# 20 2 5