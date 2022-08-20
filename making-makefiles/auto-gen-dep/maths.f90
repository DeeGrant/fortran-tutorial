program maths
    use geometry, only: area,pi
    implicit none
    real :: r

    r = 2.
    print*,'pi is ',pi
    print*,'the area of a circle, radius ',r,', is ',area(r)
end program maths