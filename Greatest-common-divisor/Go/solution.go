package main

import "fmt"

func gcd(x, y int) int {
    for y != 0 {
        x, y = y, x%y
    }
    return x
}

func main() {
    //fmt.Println(gcd(33, 77))
    fmt.Println("GCD of 2147483646,1143271457 is " , gcd(2147483646, 1143271457))
}
