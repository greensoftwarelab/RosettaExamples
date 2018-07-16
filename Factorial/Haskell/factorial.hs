

main = do
    let n = 15
    let f = factorial(15)
    print(f)


factorial n = foldl (*) 1 [1..n]
