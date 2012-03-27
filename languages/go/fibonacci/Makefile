include ${GOROOT}/src/Make.inc

TARG=fibonacci

GOFILES=fibonacci.go

GOTESTFILES=fibonacci_test.go

main: package
	$(GC) -I_obj cli.go
	$(LD) -L_obj -o $@ cli.$O
	@echo "Done. Executable is: $@"

include ${GOROOT}/src/Make.pkg
