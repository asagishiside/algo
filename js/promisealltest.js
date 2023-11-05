function func1() {
    return new Promise( resolve => setTimeout(
        () => {
            console.log("promise1");
            resolve();
        },
        10000
    ))
}

function func2() {
    return new Promise( (resolve, reject)  => setTimeout(
        () => {
            console.log("promise2");
            resolve();
        },
        5000
    ))
}


console.log("start")

async function asyncpromisecall(){
    await Promise.all([
        func1(),
        func2(),
        console.log('not promise')
    ]).then( 
        value => {
            console.log("promise all end");
        },
        err => {
            console.log("エラー");
        }
        );
    console.log('async promise call finish');
}

asyncpromisecall();
console.log('end');