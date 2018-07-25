ifndef FILE
#$(error FILE is not set)
	FILE=solution.ada
endif

ifndef TASK
#$(error TASK is not set)
	TASK=doors_optimized
endif

compile:
	gnatchop -r -w $(FILE)
	gnatmake -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp -f $(TASK).adb -o $(FILE)_run -largs -lapr-1
	gcc-6 -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp $(TASK).adb
	gnatbind-6 -x $(TASK).ali
	gnatlink-6 $(TASK).ali -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -o $(FILE)_run -lapr-1

measure:
	sudo ../../RAPL/main "./$(FILE)_run" Ada $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(FILE)_run

clean:
	rm -rf *.adb *.ali *.o *_run
