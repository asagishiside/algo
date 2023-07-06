const algo = (n, arr) => {
    dp = [];
    for(let i = 0; i < n; i++) {
        if (i == 0) dp[i] = 0;
        if (i == 1) dp[i] = Math.abs(arr[i - 1] - arr[i]);
        if (i >= 2){
            v1 = dp[i - 1] + Math.abs(arr[i - 1] - arr[i]);
            v2 = dp[i - 1] + Math.abs(arr[i - 2] - arr[i]);
            dp[i] = Math.min(v1, v2);
        }
    }
    console.log(dp);
}

algo(5, [8,6,9,2,1]);