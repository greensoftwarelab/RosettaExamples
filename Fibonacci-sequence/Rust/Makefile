ifndef FILE
#$(error FILE is not set)
	FILE=fibonacci-sequence-5.rust
endif

ifndef TASK
#$(error TASK is not set)
	TASK=fibonacci-sequence
endif

compile:
	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs $(FILE) -o $(TASK).rust_run

measure:
	sudo ../../RAPL/main "./$(TASK).rust_run" Rust $(TASK)

run:
	./$(TASK).rust_run

mem:
	/usr/bin/time -v ./$(TASK).rust_run

valgrind:
	valgrind --tool=massif --stacks=yes ./$(TASK).rust_run 
valmem:
	valgrind --tool=massif --stacks=yes  ./$(TASK).rust_run
clean:
	rm -rf *.rust_run

