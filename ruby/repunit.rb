N = gets.chomp.to_i
arr = []
1.upto(12) do |i|
  arr << '1' * i
end

ans = []

arr.each do |i|
  arr.each do |j|
    arr.each do |k|
      ans << i.to_i + j.to_i + k.to_i
    end
  end
end

ans.uniq!
ans.sort!
print ans[N-1]

# 十進法ですべての桁の数字が 
# 1 である整数をレピュニットと呼びます。レピュニットを小さい順に並べると 
# 1,11,111,… です。

# ちょうど 
# 3 つのレピュニットの和として表せる整数のうち 
# N 番目に小さいものを求めてください。