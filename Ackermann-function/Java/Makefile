ifndef FILE
#$(error FILE is not set)
	FILE=ackermann-function-1.java
endif

ifndef TASK
#$(error TASK is not set)
	TASK=ackermann_function
endif

ifndef JAVA_CLASS
	JAVA_CLASS=AckermannFunction
endif

compile:
	cp $(FILE) $(TASK).java
	/usr/local/src/jdk1.8.0_121/bin/javac -d . $(TASK).java
measure:
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)" Java $(JAVA_CLASS)

run:
	/usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

mem:
	/usr/bin/time -v /usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

valmem:
	valgrind --tool=massif --stacks=yes  /usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

clean:
	rm -rf *.class $(TASK).java
