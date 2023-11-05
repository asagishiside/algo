function main(input) {
  const N = Number(input.split('\n')[0]);
  const W = input.split('\n').slice(1, N + 1).map( w => Number(w.split(' ')[0]))
  const X = input.split('\n').slice(1, N + 1).map( x => Number(x.split(' ')[1]))
  const arr = {}
  
  for(let time = 0; time <= 24; time++) {
    for(let i = 0; i < N; i++) {
      if((X[i] + time) % 24 >= 9 && (X[i] + time) % 24 <= 17 ){
        if(!arr[time]){arr[time] = 0}
        arr[time] += W[i]
      }
  }
  }
  console.log(Math.max(...Object.values(arr)))
  
}
main(require("fs").readFileSync("/dev/stdin", "utf8"));