ifndef FILE
#$(error FILE is not set)
	FILE=greatest-element-of-a-list-1.java
endif

ifndef TASK
#$(error TASK is not set)
	TASK=greatest_element_of_a_list
endif

ifndef JAVA_CLASS
#$(error JAVA_CLASS is not set)
	JAVA_CLASS=Greatest
endif

compile:
	cp $(FILE) $(TASK).java
	/usr/local/src/jdk1.8.0_121/bin/javac -d . $(TASK).java
measure:
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)" Java $(TASK)

run:
	/usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

mem:
	/usr/bin/time -v /usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

valmem:
	valgrind --tool=massif --stacks=yes  /usr/local/src/jdk1.8.0_121/bin/java $(JAVA_CLASS)

clean:
	rm *.class $(TASK).java
