ifndef FILE
#$(error FILE is not set)
	FILE=sorting-algorithms-quicksort-1-saraiva.php
endif

ifndef TASK
#$(error TASK is not set)
	TASK=quicksort
endif

compile:

measure:
	sudo ../../RAPL/main "php -n -d memory_limit=4096M $(FILE)" PHP $(TASK)

run:
	php -n -d memory_limit=4096M $(FILE)

mem:
	/usr/bin/time -v php -n -d memory_limit=4096M $(FILE)

valgrind:
	valgrind --tool=massif --stacks=yes php -n -d memory_limit=4096M $(FILE)
valmem:
		valgrind --tool=massif --stacks=yes  php -n -d memory_limit=4096M $(FILE)
clean:
	rm -rf $(TASK).php
