ifndef FILE
#$(error FILE is not set)
	FILE= binary-search.c
endif

ifndef TASK
#$(error TASK is not set)
	TASK=binary-search
endif

compile:
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -fopenmp -D_FILE_OFFSET_BITS=64 -I/usr/include/apr-1.0 $(FILE) -o $(TASK).gcc_run -lapr-1 -lgomp -lm
	
measure:
	sudo ../../RAPL/main "./binarytrees.gcc-3.gcc_run" C $(TASK)

run:
	./$(TASK).gcc_run

mem:
	/usr/bin/time -v ./$(TASK).gcc_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(TASK).gcc_run

clean:
	rm -rf *.gcc_run
