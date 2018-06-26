ifndef FILE
#$(error FILE is not set)
	FILE=abc-problem.go
endif

ifndef TASK
#$(error TASK is not set)
	TASK=abc_problem
endif

compile:
	/usr/bin/go build -o $(FILE)_run

measure:
	sudo ../../RAPL/main "./$(FILE)_run" Go $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(FILE)_run

clean:
	rm -rf *.go_run
