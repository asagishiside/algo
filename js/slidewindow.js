function main(input) {
  const N = Number(input.split('\n')[0].split(' ')[0])
  const M = Number(input.split('\n')[0].split(' ')[1])
  const A = input.split('\n')[1].split(' ').map(Number)
  const array = A.sort((a, b) => a-b)
  const searchArea = []
  let r = 0;
  let count = 0;
  for(let i = 0; i < N; i++){
    searchArea[i] = 0;
    while( array[r] - array[i] < M ){
      r++
      count++
    }
    searchArea[i] = count
    count--
  }
  console.log(Math.max(...searchArea))
  
  
}

const input="10 1\n 3 1 4 1 5 9 2 6 5 3"