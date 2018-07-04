ifndef FILE
#$(error FILE is not set)
	FILE=sieve-of-eratosthenes-1.py
endif

ifndef TASK
#$(error TASK is not set)
	TASK=sieve_of_eratosthenes
endif

compile:
	cp $(FILE) $(TASK).py
measure:
	sudo ../../RAPL/main "/usr/local/src/Python-3.6.1/bin/python3.6 -OO $(TASK).py" Python $(TASK)

run:
	/usr/local/src/Python-3.6.1/bin/python3.6 -OO $(TASK).py

mem:
	/usr/bin/time -v /usr/local/src/Python-3.6.1/bin/python3.6 -OO $(TASK).py
valmem:
		valgrind --tool=massif --stacks=yes  /usr/local/src/Python-3.6.1/bin/python3.6 -OO $(TASK).py

clean:
	rm -rf $(TASK).py
