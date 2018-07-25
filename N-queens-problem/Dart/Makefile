ifndef FILE
#$(error FILE is not set)
	FILE=solution.dart
endif

ifndef TASK
#$(error TASK is not set)
	TASK=sol
endif

compile:

measure:
	sudo ../../RAPL/main "/usr/bin/dart  $(FILE)" Dart $(TASK)

run:
	/usr/bin/dart  $(FILE)

mem:
	/usr/bin/time -v  /usr/bin/dart  $(FILE)

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/dart  $(FILE)
valmem:
		valgrind --tool=massif --stacks=yes   /usr/bin/dart  $(FILE)
