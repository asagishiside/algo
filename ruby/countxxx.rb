N = gets.chomp.to_i
S = gets.chomp
SA = S.split('')
map = {}
ans = []
uni = SA.uniq()



uni.each do |u|
  a = S.scan(/#{u}+/)
  ans.push(a.max())
end

print ans.join().size