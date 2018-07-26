gcdr :: (Integral a) => a -> a -> a
gcdr x y = gcd_ (abs x) (abs y)
  where
    gcd_ a 0 = a
    gcd_ a b = gcd_ b (a `rem` b)


main = putStrLn ("GCD of 2147483646,1143271457 " ++ show ( gcd 2147483646 1143271457)) 
