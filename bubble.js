function bubbleSort(arr) {
    for(let i = arr.length - 1; i >= 0; i--) {
        for(let j = arr.length - 1; j >= 0; j--) {
            if (arr[j] < arr[j - 1]) {
                let tmp = arr[j];
                arr[j] = arr[j - 1];
                arr[j - 1] = tmp;
            }
        }
    }
    console.log(arr);
}

function bubbleSort2(arr) {
    for(let i = 0; i < arr.length; i++) {
        for(let j = arr.length - 1; j >= i; j--) {
            if (arr[j] < arr[j - 1]) {
                let tmp = arr[j];
                arr[j] = arr[j - 1];
                arr[j - 1] = tmp;
            }
        }
    }
    console.log(arr);
}

bubbleSort([8,6,9,2,1,-1,100,29,100]);
bubbleSort2([8,6,9,2,1,-1,100,29,100]);