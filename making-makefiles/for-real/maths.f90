program maths
    use geometry, only:area,pi
    implicit none
    real :: r

    r = 2.0
    print*,'pi is ',pi
    print*,'the area of a circle with radius ',r,' is ',area(r)

end program maths