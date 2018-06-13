ifndef FILE
#$(error FILE is not set)
	FILE=remove-duplicate-elements-1.cs.csharp
endif

ifndef TASK
#$(error TASK is not set)
	TASK=remove_duplicate_elements
endif

compile: restore
	cp $(FILE) Program.cs
	/usr/bin/dotnet build -c Release

restore:
	test -f tmp.csproj || (dotnet new console -o . -n tmp && dotnet restore)

measure:
	sudo ../../RAPL/main "/usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll" CSharp $(TASK)

run:
	/usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll

mem:
	/usr/bin/time -v  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll
valmem:
		valgrind --tool=massif --stacks=yes   /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll

clean:
	rm -rf tmp.csproj bin obj Program.cs
