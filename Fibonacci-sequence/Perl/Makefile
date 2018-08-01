ifndef FILE
#$(error FILE is not set)
	FILE=fibonacci-sequence-2.pl
endif

ifndef TASK
#$(error TASK is not set)
	TASK=fibonacci-sequence
endif

compile:

measure:
	sudo ../../RAPL/main "/usr/local/src/perl-5.24.0/bin/perl $(FILE)" Perl $(TASK)

run:
	/usr/local/src/perl-5.24.0/bin/perl $(FILE)

mem:
	/usr/bin/time -v  /usr/local/src/perl-5.24.0/bin/perl $(FILE)

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/local/src/perl-5.24.0/bin/perl $(FILE)
valmem:
		valgrind --tool=massif --stacks=yes   /usr/local/src/perl-5.24.0/bin/perl $(FILE)
clean:
	rm -rf *.o
