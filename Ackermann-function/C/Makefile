ifndef FILE
#$(error FILE is not set)
	FILE=ackermann-function-1.c
endif

ifndef TASK
#$(error TASK is not set)
	TASK=ackermann_function
endif

compile:
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -fopenmp -D_FILE_OFFSET_BITS=64 -I/usr/include/apr-1.0 $(FILE) -o $(TASK).gcc_run -lapr-1 -lgomp -lm
	
measure:
	sudo ../../RAPL/main "$(TASK).gcc_run" C $(TASK)

run:
	./$(TASK).gcc_run

mem:
	/usr/bin/time -v ./$(TASK).gcc_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(TASK).gcc_run

clean:
	rm -rf *.gcc_run
