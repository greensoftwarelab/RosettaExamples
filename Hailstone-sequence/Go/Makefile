ifndef FILE
#$(error FILE is not set)
	FILE=hailstone-sequence-1.go
endif

ifndef TASK
#$(error TASK is not set)
	TASK=hailstone-sequence
endif

compile:
	/usr/bin/go build -o $(FILE)_run
	chmod +x ./hailstone-sequence-1.go_run

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

