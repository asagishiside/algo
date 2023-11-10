def frog(n, h)
    dp = [0]
    dp[1] = dp[0] + (h[1] - h[0]).abs
    (2...n).each do |i|
        dp[i] = [dp[i-1] + (h[i] - h[i-1]).abs, dp[i-2] + (h[i] - h[i-2]).abs].min
    end
    puts(dp[n-1])
end

frog(4, [10, 30, 40, 20])