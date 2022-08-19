FC=gfortran
FFLAGS=-O3 -Wall -Wextra -std=f2008
SRC=area.f90 maths.f90
OBJ=${SRC:.f90=.o}

# The generic target to compile .f90 files into .o files.
%.o: %.f90
	$(FC) $(FFLAGS) -o $@ -c $<

# the default. The above target doesn't count as the default?
maths: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $(OBJ)

clean:
	@rm -f *.mod *.o maths
