FC=gfortran
FFlAGS=-O3 -Wall -Wextra -std=2008
DEPFLAGS=-M -cpp
SRC=area.f90 maths.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

maths: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

deps:
	$(FC) $(DEPFLAGS) $(SRC) > make.deps

make.deps: deps

include make.deps
# A next step in using it?

clean:
	@rm -f *.o *.mod maths