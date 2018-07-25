func fibonacci(n: Int) -> Int {
    if n < 2 {
        return n
    } else {
        return fibonacci(n:n-1) + fibonacci(n:n-2)
    }
}

print(fibonacci(n:46))
