ifndef FILE
#$(error FILE is not set)
	FILE=
endif

ifndef TASK
#$(error TASK is not set)
	TASK=
endif

compile:
	cp $(FILE) $(TASK).erl
	erlc +native +"{hipe, [o3]}" $(TASK).erl

measure:
	sudo ../../RAPL/main "erl -smp enable -noshell -run  $(TASK) main" Erlang $(TASK)

run:
	erl -smp enable -noshell -run  $(TASK) main

mem:
	/usr/bin/time -v  erl -smp enable -noshell -run  $(TASK) main

valgrind:
	valgrind --tool=massif --stacks=yes  erl -smp enable -noshell -run  $(TASK) main
valmem:
		valgrind --tool=massif --stacks=yes   erl -smp enable -noshell -run  $(TASK) main

clean:
	rm -rf *.dump *.beam
