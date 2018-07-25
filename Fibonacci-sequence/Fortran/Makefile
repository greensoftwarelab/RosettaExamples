ifndef FILE
#$(error FILE is not set)
	FILE=fibonacci.f90
endif

ifndef TASK
#$(error TASK is not set)
	TASK=fibonacci
endif

compile:
	ifort -O3 -xHost -qopenmp -static-intel -ip -lapr-1 $(FILE) -o $(FILE)_run

measure:
	sudo ../../RAPL/main "./$(FILE)_run" Fortran $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v  ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes  ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes   ./$(FILE)_run

clean:
	rm -rf *.o
