def newScheme(s)
  sarray = s.chomp.split.map(&:to_i)
  (0...sarray.size-1).each do |i|
    unless sarray[i] <= sarray[i+1] && 100 <= sarray[i] && sarray[i] <= 675 && sarray[i] % 25 == 0
      print 'No'
      exit
    end
  end
  print 'Yes'
end

newScheme("125 175 250 300 400 525 600 650")