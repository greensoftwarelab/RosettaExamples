function ack(m, n) {
 return m === 0 ? n + 1 : ack(m - 1, n === 0  ? 1 : ack(m, n - 1));
}

for(var m = 0; m < 4; m++){
    for(var n = 0; n < 14; n++){
        console.log(ack(m,n));
    }
}
