program maths
    use geometry, only: area, pi
    implicit none
    real :: r

    r = 3.
    print*,'pi is ',pi
    print*,'area of a circle, radius ',r,', is ',area(r)
end program maths