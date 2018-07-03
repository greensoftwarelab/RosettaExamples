ifndef FILE
#$(error FILE is not set)
	FILE=factorial-2.java
endif

ifndef TASK
#$(error TASK is not set)
	TASK=factorial
endif

compile:
	cp $(FILE) $(TASK).java
	/usr/local/src/jdk1.8.0_121/bin/javac -d . $(TASK).java
measure:
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java Test" Java $(TASK)

run:
	/usr/local/src/jdk1.8.0_121/bin/java Test

mem:
	/usr/bin/time -v /usr/local/src/jdk1.8.0_121/bin/java Test

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/jdk1.8.0_121/bin/java Test

valmem:
	valgrind --tool=massif --stacks=yes  /usr/local/src/jdk1.8.0_121/bin/java Test

clean:
	rm *.class $(TASK).java
