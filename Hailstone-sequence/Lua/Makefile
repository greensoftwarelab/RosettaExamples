ifndef FILE
#$(error FILE is not set)
	FILE=hailstone-sequence.lua
endif

ifndef TASK
#$(error TASK is not set)
	TASK=hailstone-sequence
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
	#rm -rf $(TASK).lua
