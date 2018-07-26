ifndef FILE
#$(error FILE is not set)
	FILE=
endif

ifndef TASK
#$(error TASK is not set)
	TASK=
endif

compile:
	sbcl --load $(FILE) --eval "(save-lisp-and-die \"$(TASK).core\" :purify t :toplevel (lambda () (main) (quit)))"

measure:
	sudo ../../RAPL/main "sbcl --noinform --core $(TASK).core" Lisp $(TASK)

run:
	sbcl --noinform --core $(TASK).core 

clean:
	rm -rf *core

mem:
	/usr/bin/time -v sbcl --noinform --core $(TASK).core 
