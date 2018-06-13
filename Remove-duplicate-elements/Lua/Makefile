ifndef FILE
#$(error FILE is not set)
	FILE=remove-duplicate-elements-2.lua
endif

ifndef TASK
#$(error TASK is not set)
	TASK=remove_duplicate_elements
endif

compile:

measure:
	sudo ../../RAPL/main "/usr/local/src/lua-5.3.3/bin/lua  $(FILE)" Lua $(TASK)

run:
	/usr/local/src/lua-5.3.3/bin/lua  $(FILE)

mem:
	/usr/bin/time -v /usr/local/src/lua-5.3.3/bin/lua  $(FILE)

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/lua-5.3.3/bin/lua  $(FILE)
valmem:
		valgrind --tool=massif --stacks=yes  /usr/local/src/lua-5.3.3/bin/lua  $(FILE)
clean:
	rm -rf $(TASK).lua
