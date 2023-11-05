function resembleStringCheck(str, arr) {
    const T = str
    const Ss = arr
    const ans = []
    Ss.forEach((S, index)=>{
      if (S == T) {
        ans.push(index+1)
      } else if (S.length + 1 == T.length){
        let count = 0;
        for(let i = 0, j = 0; i < T.length; i++, j++){
          if(count > 1){break}
          if(T[i] !== S[j]){
            j--
            count++
          }
        }
        if(count < 2){ ans.push(index+1) }
      } else if (S.length - 1 == T.length){
        let count = 0;
        for(let i = 0, j = 0; i < S.length + 1; i++, j++){
          if(count > 1){break}
          if(S[i] !== T[j]){
            j--
            count++
          }
        }
        if(count < 2){ ans.push(index+1) }
      } else if (S.length == T.length){
        let count = 0;
        for(let i = 0; i < S.length + 1; i++){
          if(count > 1){break}
          if(S[i] !== T[i]){
            count++
          }
        }
        if(count < 2){ ans.push(index+1) }
      }
    })
    console.log(ans.length + '\n' + ans.join(' '))
  }
  
resembleStringCheck('ababc',['ababc','babc','abacbc','abdbc','abbac'])