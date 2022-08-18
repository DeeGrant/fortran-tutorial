# hello-world

### Run

Compile the program first to a 'myprog' binary.

`gfortran -o myprog hello.f90`

Run the binary
 
`./myprog`

Should get an output of ` hello world`

### See the compiled assembly language

`gfortran -S hello.f90` generates a hello.s file containing the assembly language.