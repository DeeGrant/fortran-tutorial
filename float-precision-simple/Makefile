FC=gfortran
FFLAGS=-O3 -Wall -Wextra -std=f2008
8_FLAG=-fdefault-real-8
16_FLAG=-fdefault-real-16
DEPFLAGS=-M -cpp
SRC=maths.f90

maths:
	$(FC) $(FFLAGS) -o $@ $(SRC)

maths-8:
	$(FC) $(FFLAGS) $(8_FLAG) -o $@ $(SRC)

maths-16:
	$(FC) $(FFLAGS) $(16_FLAG) -o $@ $(SRC)

deps:
	$(FC) $(DEPFLAGS) $(SRC) > make.deps

make.deps: deps

clean:
	@rm -f *.o *.mod maths maths-8 maths-16