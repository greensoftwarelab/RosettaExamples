proc main() {

writeln(fib(46));
}

proc fib(m: int): int {
	if m < 2 {
		return m;
	}
	else {
        	return fib(m-1)+fib(m-2);
	}
}
