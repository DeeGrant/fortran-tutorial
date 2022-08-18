# create-modules

### Compiling has changed

We must now compile both files. The module file will have to be compiled first so that the maths.f90 file can see it.

`gfortran -o maths geometry.f90 maths.f90`

### Notes

#### Compiler Warnings

The compiler will do type checking across modules.

The flag for turning on compiler warnings is `-Wall`.

`gfortran -Wall -o maths geometry.f90 maths.f90`

There are extra level flags as well:
- -Wextra
- -pedantic

`gfortran -Wextra -pedantic -Wall -o maths geometry.f90 maths.f90`

It's a good idea to have your code compile without having any warnings.

#### Enforce New Fortran Standard

You can also enforce the new fortran standard using the `-std=f2008` flag.

`gfortran -std=f2008 -Wextra -pedantic -Wall -o maths geometry.f90 maths.f90`

#### Optimization

Compiler tries to get the binary to run faster. Optimization (O not zero) level 3 ex. `-O3` flag.

`gfortran -O3 -std=f2008 -Wextra -pedantic -Wall -o maths geometry.f90 maths.f90`
