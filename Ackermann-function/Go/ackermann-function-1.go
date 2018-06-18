package main

func main(){
    for m := 0; m < 4; m++ {
        for n := 0; n < 13; n++ {
            println(Ackermann(uint(m),uint(n)))
        }
    }
}

func Ackermann(m, n uint) uint {
	switch uint(0) {
	case m:
		return n + 1
	case n:
		return Ackermann(m - 1, 1)
	}
	return Ackermann(m - 1, Ackermann(m, n - 1))
}
