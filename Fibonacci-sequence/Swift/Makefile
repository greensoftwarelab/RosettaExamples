ifndef FILE
#$(error FILE is not set)
	FILE=fibonacci-sequence-4.swift
endif

ifndef TASK
#$(error TASK is not set)
	TASK=fibonacci-sequence
endif

compile:
	/usr/local/src/swift-2017-04-13-a-ubuntu16.10/usr/bin/swiftc $(FILE) -Ounchecked -whole-module-optimization -I Include/swift/apr -o $(FILE)_run

xmeasure:
	sudo ../../RAPL/main "./$(FILE)_run" Swift $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run
valmem:
		valgrind --tool=massif --stacks=yes  ./$(FILE)_run

clean:
	rm -rf *_run
