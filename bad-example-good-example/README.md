# bad-example

Why we would want to use modern Fortran (f90 and above)?
- It provides compilation warnings
- We can negate the implicit typing
  - implicit none at beginning of program
  - Or `gfortran -fimplicit-none -o test-modern test-modern.f90`
- Don't use line labels anymore

This test.f file is perfectly legal and will compile, but does not generate the expected output.

### What is the bug?

The dot on line 3 should be a comma

### Bonus: Why is test.f legal fortran?