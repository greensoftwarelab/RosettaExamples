ifndef FILE
#$(error FILE is not set)
	FILE=
endif

ifndef TASK
#$(error TASK is not set)
	TASK=solution.f90
endif

compile:
	cp $(FILE) $(TASK)
	ifort -O3 -xHost -qopenmp -static-intel -ip -lapr-1 $(TASK) -o $(TASK)_run

measure:
	sudo ../../RAPL/main "./$(TASK)_run" Fortran $(TASK)

run:
	./$(TASK)_run

mem:
	/usr/bin/time -v  ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes  ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes   ./$(FILE)_run

clean:
	rm -rf *.o
