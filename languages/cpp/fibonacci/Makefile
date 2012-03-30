COMPILER = g++
CCFLAGS = -g -ansi
LIBFLAGS = lib/cppunitlite.a

%.o : %.cpp
	$(COMPILER) $(CCFLAGS) -c $<

objects = fibonacci.o fibonacci_tests.o

all: cppunitlite test

cppunitlite:
	cd lib; make all

test: $(objects) 
	${COMPILER} -o test $(objects) ${LIBFLAGS} 
	./test

fibonacci.o: fibonacci.cpp
fibonacci_tests.o: fibonacci_tests.cpp

clean:
	cd lib; make clean
	rm $(objects) test
