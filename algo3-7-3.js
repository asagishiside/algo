const algo = (n) => {
    let dp = [];
    for(let i = 0; i <= n; i++) {
        dp[i]=[];
        for (let j = 0; j <= n; j++) {
            if (i == 0 || j == 0) dp[i][j] = 1;
            else if (i == 2 && j ==2) dp[i][j] = 0;
            else if (i == 5 && j ==1) dp[i][j] = 0;
            else dp[i][j] = dp[i-1][j] + dp [i][j-1];
        }
    }
    console.log(dp)
}

algo(5);