@m = {}

def memoizedRecursion(n)
  return 0 if n == 1 
  return @m[n] if @m[n]
  return @m[n] = memoizedRecursion(n/2) + memoizedRecursion((n+1)/2) + n
end

puts memoizedRecursion(340)
puts @m