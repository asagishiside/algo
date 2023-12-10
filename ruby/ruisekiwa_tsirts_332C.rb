N, M = gets.chomp.split.map(&:to_i)
S = gets.chomp.split('').map(&:to_i)
sum = Array.new(N,0)
logo = 0
blank = M
N.times do |i|
  case S[i]
    when 2
      sum[i] = logo += 1
    when 1
      blank -= 1
      if blank < 0
        sum[i] = logo += 1
      end
    when 0
      logo = 0
      blank = M
    end
end
print sum.max


