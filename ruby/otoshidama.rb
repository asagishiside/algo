N, Y = gets.chomp.split(' ').map(&:to_i)

(0..N).each do |x|
  (0..N).each do |y|
    next if(x + y > N)
    z = N - (x + y)
      if x * 10000 + y * 5000 + z * 1000 == Y
        print("#{x} #{y} #{z}")
        return
      end
  end
end

print('-1 -1 -1')