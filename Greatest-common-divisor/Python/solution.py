def gcd(u, v):
    return gcd(v, u % v) if v else abs(u)

print ("GCD of 2147483646,1143271457 is " + repr(gcd(2147483646,1143271457)))
