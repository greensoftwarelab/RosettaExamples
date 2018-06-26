ifndef FILE
#$(error FILE is not set)
        FILE=ackermann-function.chapel
endif

ifndef TASK
#$(error TASK is not set)
        TASK=ackermann_function
endif

compile:
	cp $(FILE) $(TASK).chpl
	/usr/local/src/chapel-1.15.0/bin/linux64/chpl --fast $(TASK).chpl -o $(TASK).chapel_run
measure:
	sudo ../../RAPL/main "./$(TASK).chapel_run --n=21" Chapel $(TASK)

run:
	./$(TASK).chapel_run

mem:
	/usr/bin/time -v ./$(TASK).chapel_run --n=21

valgrind:
	valgrind --tool=massif --stacks=yes ./$(TASK).chapel_run --n=21
valmem:
		valgrind --tool=massif --stacks=yes  ./$(TASK).chapel_run --n=21

clean:
	rm -rf *.chapel_run *.chpl
