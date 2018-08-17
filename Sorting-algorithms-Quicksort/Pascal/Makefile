ifndef FILE
#$(error FILE is not set)
	FILE=sorting-algorithms-quicksort-saraiva.pascal
endif

ifndef TASK
#$(error TASK is not set)
	TASK=MergeSort
endif

compile:
	cp $(FILE) $(TASK).pas
	/usr/local/src/fpc-3.0.2.x86_64-linux/bin/fpc -Mobjfpc -FuInclude/fpascal -XXs -O4 -Tlinux  -oFPASCAL_RUN $(TASK).pas
	mv FPASCAL_RUN $(FILE)_run
	rm $(TASK).pas
	
measure:
	sudo ../../RAPL/main "./$(FILE)_run" Pascal $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(FILE)_run

clean:
	rm -rf *_run *.o

