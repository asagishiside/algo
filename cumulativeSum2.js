function main(input){
  const [[D], [N], ...LR] = input.split("\n").map(e => e.split(" ").map(Number));
  const sumAttend = new Array(D).fill(0)
  const daily = new Array(D).fill(0)
  for(let i = 0; i < N; i++){
    const [L, R] = LR[i];
    sumAttend[L-1] += 1
    sumAttend[R] -= 1
  }
  daily[0] = sumAttend[0]
  for(let j = 1; j < D; j++){
      daily[j] = daily[j-1] + sumAttend[j] 
  }
  console.log(...daily)
}
main("8\n5\n2 3\n3 6\n5 7\n3 7\n1 5\n");