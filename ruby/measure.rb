N = gets.chomp.to_i
j = []
ans = Array.new(N+1) {[]}

(1..9).each do |i|
  if N % i == 0 then
    j.push(i)
  end
end


(0..N).each do |i|
  if i == 0
    ans[i] = j
    next
  end
  j.each do |k|
    if i % (N / k) == 0
      ans[i].push(k)
    end
  end
end

ans.each do |i|
  if i.min
    print i.min
  else
    print '-'
  end
end


    
  