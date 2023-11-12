def main(h, w, n, abcd)
  x = Array.new(h+2) {Array.new(w+2) {0}}
  (0...n).each do |i|
    a,b,c,d = abcd[i].map(&:to_i)
    x[a][b] += 1
    x[c+1][d+1] += 1
    x[c+1][b] -= 1
    x[a][d+1] -= 1
  end


  sum = Array.new(h+2) {Array.new(w+2) {0}}

  (1..h).each do |i|
    (1..w).each do |j|
      sum[i][j] = x[i][j] + sum[i][j-1]
    end
  end

  (1..w).each do |j|
    (1..h).each do |i|
      sum[i][j] = sum[i][j] + sum[i-1][j]
    end
  end

  (1..h).each do |i|
      puts(sum[i][1..w].join(' '))
  end
end

main(5, 5, 2, [[1, 1, 3, 3],[2, 2, 4, 4]])