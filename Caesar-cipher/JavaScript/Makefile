ifndef FILE
#$(error FILE is not set)
	FILE= caesar-cipher-3.js
endif

ifndef TASK
#$(error TASK is not set)
	TASK= caesar-cipher
endif

compile:
	cp -L $(FILE) $(TASK).js
measure:
	sudo ../../RAPL/main "/usr/local/src/node-v7.9.0-linux-x64/bin/node $(TASK).js" JavaScript $(TASK)

run:
	/usr/local/src/node-v7.9.0-linux-x64/bin/node $(TASK).js

mem:
	/usr/bin/time -v /usr/local/src/node-v7.9.0-linux-x64/bin/node $(TASK).js

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/node-v7.9.0-linux-x64/bin/node $(TASK).js
valmem:
		valgrind --tool=massif --stacks=yes  /usr/local/src/node-v7.9.0-linux-x64/bin/node $(TASK).js

clean:
	rm -rf $(TASK).js
