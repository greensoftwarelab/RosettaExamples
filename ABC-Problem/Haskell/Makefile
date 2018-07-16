ifndef FILE
#$(error FILE is not set)
	FILE=abc-problem-1.hs
endif

ifndef TASK
#$(error TASK is not set)
	TASK=abc_problem
endif

compile:
	cp $(FILE) $(TASK).hs
	/usr/local/src/ghc-8.0.2/bin/ghc --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -funbox-strict-fields $(TASK).hs -o $(TASK).ghc_run

measure:
	sudo ../../RAPL/main "./$(TASK).ghc_run +RTS -N4 -K128M -H -RTS" Haskell $(TASK)

run:
	./$(TASK).ghc_run +RTS -N4 -K128M -H -RTS

mem:
	/usr/bin/time -v  ./$(TASK).ghc_run +RTS -N4 -K128M -H -RTS

valgrind:
	valgrind --tool=massif --stacks=yes  ./$(TASK).ghc_run +RTS -N4 -K128M -H -RTS
valmem:
		valgrind --tool=massif --stacks=yes   ./$(TASK).ghc_run +RTS -N4 -K128M -H -RTS

clean:
	rm -rf *.o *.hi $(TASK).hs *ghc_run
