compile:
	sbcl --load fibonacci-sequence-4.lisp --eval "(save-lisp-and-die \"fibonacci-sequence-4.core\" :purify t :toplevel (lambda () (main) (quit)))"

measure:
	sudo ../../RAPL/main "sbcl --noinform --core fibonacci-sequence-4.core 21" Lisp binary-trees

run:
	sbcl --noinform --core fibonacci-sequence-4.core 21

clean:
	rm -rf *.core

mem:
	/usr/bin/time -v sbcl --noinform --core fibonacci-sequence-4.core 21

valgrind:
	valgrind --tool=massif --stacks=yes sbcl --noinform --core fibonacci-sequence-4.core 21
valmem:
		valgrind --tool=massif --stacks=yes  sbcl --noinform --core fibonacci-sequence-4.core 21
