ifndef FILE
#$(error FILE is not set)
	FILE=
endif

ifndef TASK
#$(error TASK is not set)
	TASK=
endif

compile:
	cp $(FILE) $(TASK).ts
	/usr/local/src/node-v7.9.0-linux-x64/bin/tsc --alwaysStrict -t ESNEXT  $(TASK).ts

measure:
	sudo ../../RAPL/main "/usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict $(TASK).js" TypeScript $(TASK)

run:
	/usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict $(TASK).js

clean:
	rm -rf *.js *.ts

mem:
	/usr/bin/time -v /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict $(TASK).js

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict $(TASK).js

valmem:
		valgrind --tool=massif --stacks=yes  /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict $(TASK).js
