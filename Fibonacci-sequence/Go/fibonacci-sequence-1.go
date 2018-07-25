package main

import (
   "fmt"
)

func fib(a int) int {
  if a < 2 {
    return a
  }
  return fib(a - 1) + fib(a - 2)
}

func main() {
		fmt.Println(fib(46))
}
