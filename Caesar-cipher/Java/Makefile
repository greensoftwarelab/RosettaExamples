ifndef FILE
#$(error FILE is not set)
	FILE=ccipher.java
endif

ifndef TASK
#$(error TASK is not set)
	TASK=Cipher
endif

compile:
	cp $(FILE) $(TASK).java
	/usr/local/src/jdk1.8.0_121/bin/javac -d . $(TASK).java
measure:
	sudo ../../RAPL/main "/usr/local/src/jdk1.8.0_121/bin/java $(TASK)" Java $(TASK)

run:
	/usr/local/src/jdk1.8.0_121/bin/java $(TASK)

mem:
	/usr/bin/time -v /usr/local/src/jdk1.8.0_121/bin/java $(TASK)

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/jdk1.8.0_121/bin/java $(TASK)

valmem:
	valgrind --tool=massif --stacks=yes  /usr/local/src/jdk1.8.0_121/bin/java $(TASK)

clean:
	rm *.class $(TASK).java
