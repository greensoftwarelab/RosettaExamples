ifndef FILE
#$(error FILE is not set)
        FILE=sorting-algorithms-merge-sort-saraiva.lisp
endif

ifndef TASK
#$(error TASK is not set)
        TASK=mergesort
endif

compile:
	sbcl --load $(FILE) --eval "(save-lisp-and-die \"$(TASK).core\" :purify t :toplevel (lambda () (main) (quit)))"

measure:
	sudo ../../RAPL/main "sbcl --noinform --core $(TASK).core" Lisp $(TASK)

run:
	sbcl --noinform --core $(TASK).core

mem:
	/usr/bin/time -v sbcl --noinform --core $(TASK).core

valgrind:
	valgrind --tool=massif --stacks=yes sbcl --noinform --core $(TASK).core

valmem:
		valgrind --tool=massif --stacks=yes  sbcl --noinform --core $(TASK).core

clean:
	rm -rf *.core

