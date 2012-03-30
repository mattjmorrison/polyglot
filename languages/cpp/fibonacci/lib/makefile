COMPILER = g++
CCFLAGS = -g -ansi
LIBFLAGS = 

%.o : %.cpp
	$(COMPILER) $(CCFLAGS) -c $<

objects = Test.o TestRegistry.o TestResult.o TestResultStdErr.o

all: cppunitlite

cppunitlite: $(objects) 
	ar cr cppunitlite.a $(objects)
    
Failure.o: Failure.cpp Failure.h
SimpleString.o: SimpleString.cpp SimpleString.h
Test.o: Test.cpp Test.h
TestRegistry.o: TestRegistry.cpp TestRegistry.h
TestResult.o: TestResult.cpp TestResult.h
TestResultStdErr.o: TestResultStdErr.cpp TestResultStdErr.h


clean:
	rm $(objects) cppunitlite.a
