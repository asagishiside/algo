function main(input){
  const [[T], [N], ...LR] = input.split("\n").map(e => e.split(" ").map(Number));
  let S = new Array(T).fill(0)
  let ans = new Array(T).fill(0)
  
  for(let i = 0; i < N; i++){
    const [L, R] = LR[i]
    S[L] += 1;
    S[R] -= 1; 
  }
  for(let j = 0; j < T; j++){
    if(j == 0){
      ans[j] += S[j]
      console.log(ans[j])
    } else {
      ans[j] = ans[j-1] + S[j]
      console.log(ans[j])
    }
  }
}
main("10\n7\n0 3\n2 4\n1 3\n0 3\n5 6\n5 6\n5 6\n");