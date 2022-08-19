# making-makefiles

Ease the compilation of our program using make files.

### Intermediate Compiling

The `-c` flag will compile without linking.

Compile the geometry module without linking. This will create the area.o and geometry.mod files.

`gfortran -o area.o -c area.f90`

Compile the maths program without linking. Thil will create the maths.o file.

`gfortran -o maths.o -c maths.f90`

### Linking the Compiled Objects Files

We can now compile them into a single program

`gfortran -o maths maths.o area.o`

## Makefiles

The above are the steps we are going to put into our makefile. The [for-real](for-real) directory contains the makefile
to generate the paths program. After navigating to the directory, run `make` and it will compile maths and the intermediate
objects. `make clean` can also be used to delete all the compiled objects and program.

