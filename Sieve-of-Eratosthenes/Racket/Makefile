ifndef FILE
#$(error FILE is not set)
	FILE=sieve-of-eratosthenes-2.rkt
endif

ifndef TASK
#$(error TASK is not set)
	TASK=sieve_of_eratosthenes
endif

compile:
	cp $(FILE) $(TASK).racket
	/usr/local/src/racket-6.8/bin/raco make $(TASK).racket
	
measure:
	sudo ../../RAPL/main "/usr/local/src/racket-6.8/bin/racket ./compiled/$(TASK)_racket.zo" Racket $(TASK)

run:
	/usr/local/src/racket-6.8/bin/racket ./compiled/$(TASK)_racket.zo

mem:
	/usr/bin/time -v  /usr/local/src/racket-6.8/bin/racket ./compiled/$(TASK)_racket.zo

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/src/racket-6.8/bin/racket ./compiled/$(TASK)_racket.zo
valmem:
		valgrind --tool=massif --stacks=yes   /usr/local/src/racket-6.8/bin/racket ./compiled/$(TASK)_racket.zo

clean:
	rm -rf $(TASK).racket compiled

