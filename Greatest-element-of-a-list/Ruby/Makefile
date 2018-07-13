ifndef FILE
#$(error FILE is not set)
	FILE=greatest-element-of-a-list.rb
endif

ifndef TASK
#$(error TASK is not set)
	TASK=greatest_element_of_a_list
endif

compile:


measure:
	sudo ../../RAPL/main "/usr/local/src/ruby/bin/ruby -W0 $(FILE)" Ruby $(TASK)

run:
	/usr/local/src/ruby/bin/ruby -W0 $(FILE)

mem:
	/usr/bin/time -v /usr/local/src/ruby/bin/ruby -W0 $(FILE)

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/ruby/bin/ruby -W0 $(FILE)
valmem:
		valgrind --tool=massif --stacks=yes  /usr/local/src/ruby/bin/ruby -W0 $(FILE)

clean:
	rm -rf $(TASK).rb
