function main(input){
  const [[N], h] = input.split('\n').map(e => e.split(' ').map(Number))
  let dp = []
  for(let i = 0; i < N; i++){
    if(i == 0) dp[i] = 0;
    if(i == 1) dp[i] = dp[i-1] + Math.abs(h[i] - h[i-1]);
    if(i > 1) {
      dp[i] = Math.min(dp[i-1] + Math.abs(h[i] - h[i-1]), dp[i-2] + Math.abs(h[i] - h[i-2]))
    }
  }
  console.log(dp[dp.length-1])
  
}
main("6\n30 10 60 10 60 50");