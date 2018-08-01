ifndef FILE
#$(error FILE is not set)
	FILE=ackermann-function.f
endif

ifndef TASK
#$(error TASK is not set)
	TASK=ackermann_function
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
