ifndef FILE
#$(error FILE is not set)
	FILE=sieve-of-eratosthenes-9.fs
endif

ifndef TASK
#$(error TASK is not set)
	TASK=sieve_of_eratosthenes
endif

compile: restore
	cp $(FILE) Program.fs
	/usr/bin/dotnet build -c Release

restore:
	test -f tmp.fsproj || (dotnet new console -o . -n tmp && dotnet restore)

measure:
	sudo ../../RAPL/main "/usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll" FSharp $(TASK)

run:
	/usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll

mem:
	/usr/bin/time -v  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll
valmem:
	valgrind --tool=massif --stacks=yes   /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll

clean:
	rm -rf bin obj Program.fs
