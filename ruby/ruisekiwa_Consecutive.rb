def main(n, q, s, lr)
  array = []
  sarray = s.split('')

  (0...sarray.size).each do |i|
    if sarray[i] == sarray[i+1]
      array[i] = 1
    else
      array[i] = 0
    end
  end

  sum = [0]
  temp = 0
  array.each do |i|
    sum.push(temp+=i)
  end

  (0...q).each do |i|
    l,r = lr[i]
    ans = sum[r-1] - sum[l-1]
    puts(ans)
  end
end

main(11, 4, "mississippi", [[3,9], [4,10], [4,6],[7,7]])
