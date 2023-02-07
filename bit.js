const bit = (n, s, a) => {
    a = a.map(z => parseInt(z, 10));
    for (let i = 0; i < (1 << n); i++) {
        let sum = 0;
        for (let j = 1; j <= n; j++) {
            if(i & (1 << (j-1))){
                sum += a[j - 1];
            }
        }
        if (sum == s) { 
            console.log('yes');
            return; 
        }
    }
    console.log('no')
}

bit(3, 16, [2,5,9])