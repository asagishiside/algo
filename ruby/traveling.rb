N = gets.chomp.to_i
oldx = 0
oldy = 0
oldt = 0
(1..N).each do 
  t,x,y = gets.chomp.split.map(&:to_i)
  if (oldt - t).abs < (oldx - x).abs + (oldy - y).abs
    puts 'No'
    return
  end
  if ((oldx - x).abs + (oldy - y).abs).even? && (t - oldt).even?
    oldx = x
    oldy = y
    oldt = t
  elsif ((oldx - x).abs + (oldy - y).abs).odd? && (t - oldt).odd?
    oldx = x
    oldy = y
    oldt = t
  else
    puts 'No'
    return
  end
end

puts 'Yes'