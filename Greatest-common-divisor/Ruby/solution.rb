def gcd(u, v)
  u, v = u.abs, v.abs
  while v > 0
    u, v = v, u % v
  end
  u
end
puts "GCD of 2147483646,1143271457 is " + gcd(2147483646,1143271457).to_s
