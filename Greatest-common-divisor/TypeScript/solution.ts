function gcd_rec(a: number, b: number) {
  return b ? gcd_rec(b, a % b) : Math.abs(a);
}

console.log(" GCD 2147483646,1143271457 is "+ gcd_rec(2147483646,1143271457))
