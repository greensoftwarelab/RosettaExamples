function gcd(a,b) {
  a = Math.abs(a);
  b = Math.abs(b);

  if (b > a) {
    var temp = a;
    a = b;
    b = temp;
  }

  while (true) {
    a %= b;
    if (a === 0) { return b; }
    b %= a;
    if (b === 0) { return a; }
  }
}

console.log("GCD of 7147483649,1143271457 is %d ", gcd(7147483649, 1143271457));
