compile:
	sbcl --load hailstone-sequence.lisp --eval "(save-lisp-and-die \"hailstone-sequence.core\" :purify t :toplevel (lambda () (main) (quit)))"

measure:
	sudo ../../RAPL/main "sbcl --noinform --core hailstone-sequence.core 21" Lisp binary-trees

run:
	sbcl --noinform --core hailstone-sequence.core 21

clean:
	rm -rf *.core

mem:
	/usr/bin/time -v sbcl --noinform --core hailstone-sequence.core 21

valgrind:
	valgrind --tool=massif --stacks=yes sbcl --noinform --core hailstone-sequence.core 21
valmem:
		valgrind --tool=massif --stacks=yes  sbcl --noinform --core hailstone-sequence.core 21
