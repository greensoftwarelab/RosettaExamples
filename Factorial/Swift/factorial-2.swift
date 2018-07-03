func factorial(_ n: Int) -> Int {
	return n < 2 ? 1 : n * factorial(n - 1)
}

print(factorial(15))
