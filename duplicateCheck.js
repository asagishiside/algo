function main(input){
  const A = input.split("\n").map(a => a.split(' ').map(Number))
  let ans = 'Yes';
  A.forEach(a => {
    if (isDuplicated(a)){
      ans = "No"
    }
  })
  const B = Array.from({length: 9}, () => Array.from({length: 9}, () => 0))
  for(let i = 0; i < 9; i++){
    for(let j = 0; j < 9; j++){
      B[i][j] = A[j][i]
    }
  }
  B.forEach(b=> {
    if (isDuplicated(b)){
      ans = "No"
    }
  })
  for(let i = 0; i < 3; i++){
    for(let j = 0; j < 3; j++){
      let block = []
      const H = (i % 3) * 3
      const W = (j % 3) * 3
      for(let k = 0; k < 3; k++){
        for(let l = 0; l < 3; l++){
          block.push(A[H + k][W + l])
        }
      }
      if(isDuplicated(block)){
        ans = "No"
      }
    }
  }
  console.log(ans)
}
main("1 2 3 4 5 6 7 8 9\n4 5 6 7 8 9 1 2 3\n7 8 9 1 2 3 4 5 6\n2 3 4 5 6 7 8 9 1\n5 6 7 8 9 1 2 3 4\n8 9 1 2 3 4 5 6 7\n3 4 5 6 7 8 9 1 2\n6 7 8 9 1 2 3 4 5\n9 1 2 3 4 5 6 7 8");

function isDuplicated(elements) {
  const setElements = new Set(elements);
  return setElements.size !== elements.length;
}