FC=gfortran
FFLAGS=-O3 -Wall -Wextra -std=f2008
DEPFLAGS=-M -cpp
SRC=area.f90 precision.f90 maths.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

maths: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

deps:
	$(FC) $(DEPFLAGS) $(SRC) > make.deps

make.deps: deps

#include make.deps

comp-clean:
	@rm -f *.o *.mod

clean:
	@rm -f *.o *.mod maths