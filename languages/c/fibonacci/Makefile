CC ?= gcc
CFLAGS = -g -Wall -pedantic
LDFLAGS = -Lcu/ -lcu

OBJS = fibonacci.o fibonacci_tests.o test.o

all: test

test: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o: %.c %.h
	$(CC) $(CFLAGS) -c -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf *.o test

.PHONY: all clean
