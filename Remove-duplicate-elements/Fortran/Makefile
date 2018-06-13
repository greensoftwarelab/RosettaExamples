ifndef FILE
#$(error FILE is not set)
	FILE=remove-duplicate-elements.f 
endif

ifndef TASK
#$(error TASK is not set)
	TASK=remove_duplicate_elements
endif

compile:
	gfortran -O3 -xHost -qopenmp -static-intel -ip -lapr-1 $(FILE) -o $(FILE)_run

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
