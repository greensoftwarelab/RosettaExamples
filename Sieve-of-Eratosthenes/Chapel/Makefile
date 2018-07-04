ifndef FILE
#$(error FILE is not set)
	FILE=sieve-of-eratosthenes-2.chapel
endif

ifndef TASK
#$(error TASK is not set)
	TASK=sieve_of_eratosthenes
endif

compile:
	cp $(FILE) $(TASK).chpl
	/usr/local/src/chapel-1.15.0/bin/linux64/chpl --fast $(TASK).chpl -o $(FILE)_run
measure:
	sudo ../../RAPL/main "./$(FILE)_run" Chapel $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(FILE)_run
clean:
	rm -rf *.chapel_run $(TASK).chpl

