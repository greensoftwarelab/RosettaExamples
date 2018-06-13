ifndef FILE
#$(error FILE is not set)
	FILE=remove-duplicate-elements-3.ocaml
endif

ifndef TASK
#$(error TASK is not set)
	TASK=remove_duplicate_elements
endif

compile:
	cp $(FILE) $(TASK).ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa $(TASK).ml -o $(FILE)_run
	rm $(TASK).ml
	
measure:
	sudo ../../RAPL/main "./$(FILE)_run" OCaml $(TASK)

run:
	./$(FILE)_run

mem:
	/usr/bin/time -v ./$(FILE)_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(FILE)_run

valmem:
	valgrind --tool=massif --stacks=yes  ./$(FILE)_run

clean:
	rm -rf *.ocaml_run *.cmi *.cmx *.o

