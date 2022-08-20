FC=gfortran
FFlAGS=-O3 -Wall -Wextra -std=2008
SRC=area.f90 maths.f90
OBJ=${SRC:.f90=.o}

%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

maths: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	@rm -f *.o *.mod maths