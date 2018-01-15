GP.exe : Driver.cpp GeneticNode.h Random.h TestingMacros.h DataUtils.h
	cl /EHsc Driver.cpp /link /out:GP.exe
	
run:
	GP.exe

debug:
	devenv /debugexe GP.exe

clean:
	del /f GP.exe
	
show:
	git show --pretty="" --name-only

gadd:
	git add *.cpp
	git add *.h
	git add Makefile
