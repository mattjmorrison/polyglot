include ${GOROOT}/src/Make.inc

TARG=hi

GOFILES=hi.go

main: package
	$(GC) -I_obj hi.go
	$(LD) -L_obj -o $@ hi.$O
	@echo "Done. Executable is: $@"

include ${GOROOT}/src/Make.pkg