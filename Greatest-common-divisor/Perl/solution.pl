sub gcd_iter($$) {
  my ($u, $v) = @_;
  while ($v) {
    ($u, $v) = ($v, $u % $v);
  }
  return abs($u);
}

print "GCD of 2147483646,1143271457 is " , gcd_iter(2147483646,1143271457), "\n";
