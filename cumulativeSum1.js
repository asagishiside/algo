function main(input){
  const arg = input.trim().split('\n')
  const N = Number(arg[0].split(' ')[0])
  const Q = Number(arg[0].split(' ')[1])
  const A = arg[1].split(' ').map(Number)
  const L = arg.slice(2, 2 + Q).map(l => Number(l.split(' ')[0]))
  const R = arg.slice(2, 2 + Q).map(r => Number(r.split(' ')[1]))
  let sumArray = [0]
  A.forEach((a, index) => {
    sumArray.push(sumArray[index] + a)
  })
  for(let i = 0; i < Q; i++){
    console.log(sumArray[R[i]] - sumArray[L[i] - 1])
  }
}


main('10 5\n8 6 9 1 2 1 10 100 1000 10000\n2 3\n1 4\n3 9\n6 8\n1 10');