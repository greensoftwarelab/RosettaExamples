ifndef FILE
#$(error FILE is not set)
	FILE=remove-duplicate-elements-5.cpp
endif

ifndef TASK
#$(error TASK is not set)
	TASK=remove_duplicate_elements
endif

compile:
	/usr/bin/g++ -c -pipe -O3 -fomit-frame-pointer -march=native  -std=c++14 -fopenmp -I/usr/include/apr-1.0 $(FILE) -o $(FILE).o &&  /usr/bin/g++ $(FILE).o -o $(FILE)_run -fopenmp -lapr-1 

measure:
	sudo ../../RAPL/main "./$(FILE)_run" C++ $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(FILE)_run

clean:
	rm -rf *.o *_run

