def gcd(u, v):
    return gcd(v, u % v) if v else abs(u)

print ("GDC 20,4 is " + repr(gcd(20,4))  )
