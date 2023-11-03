function main(input){
  const arg = input.trim().split("\n");
  const [H, W] = arg[0].split(" ").map(Number)
  const X = arg.slice(1, H + 1).map( x => x.split(" ").map(Number))
  const Q = Number(arg.slice(H+1, H+2))
  const ABCD = arg.slice(-Q).map( a => a.split(" ").map(Number))
  const sum = Array.from({length: H + 1}, () => Array.from({length: W + 1}, ()=>0))
  for(let i = 1; i <= H; i++){
    for(let j = 1; j <= W; j++){
        sum[i][j] = sum[i][j-1] + X[i-1][j-1]
      }
    }
  for(let i = 1; i <= W; i++){
    for(let j = 1; j <= H; j++){
      sum[j][i] += sum[j-1][i]
    }
  }
  ABCD.forEach( abcd => {
    const [a, b, c, d] = abcd
    console.log(sum[a - 1][b - 1] + sum[c][d] - sum[c][b-1] - sum[a-1][d])
  })
}
main("5 5\n2 0 0 5 1\n1 0 3 0 0\n0 8 5 0 2\n4 1 0 0 6\n0 9 2 7 0\n2\n2 2 4 5\n1 1 5 5");