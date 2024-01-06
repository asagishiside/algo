N = gets.chomp.to_i
flg = true

arr = [0,0,0]

while flg do
  if arr[0] == N
    flg = false
  end
  if arr.sum <= N 
    puts arr.join(' ')
  end
  
  arr[2] += 1
  if arr[2] > N
    arr[1] += 1
    arr[2] = 0
  end
  if arr[1] > N
    arr[0] += 1
    arr[1] = 0
  end
end