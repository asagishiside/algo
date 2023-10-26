function main(input) {
  const H = Number(input.split('\n')[0].split(' ')[0])
  const W = Number(input.split('\n')[0].split(' ')[1])
  const S = input.split('\n').slice(1, H +1)
  const seen = Array.from({length: H}, () => Array.from({length: W}, () => false))
  let ans = 0
  const dx = [1, 0, -1, 0, 1, -1, -1, 1]
  const dy = [0, 1, 0, -1, 1, -1, 1, -1]
  
  const map = S.map((x) => {
    return x.split('')
  })
  
  for(let i = 0; i < H; i++){
    for(let j = 0; j < W; j++){
      if(!seen[i][j] && map[i][j] == '#'){
        dfs(i, j)
        ans++
      }
    }
  }
  console.log(ans)
  
  function dfs(h, w){
    seen[h][w] = true;

    for(let dir = 0; dir < 8; dir++){
      const searchH = h + dx[dir]
      const searchW = w + dy[dir]
      if(searchH < 0 || searchW < 0 || searchH >= H || searchW >= W){ continue }
      if(seen[searchH][searchW]){ continue }
      if(map[searchH][searchW] == '.'){ 
        seen[searchH][searchW] = true
        continue
        }
      dfs(searchH, searchW)
    }
    
  }
  
}