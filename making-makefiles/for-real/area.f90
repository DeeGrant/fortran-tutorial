! A module containing the funcionality to calculate the area of a circle.
! Written by Dee Grant, 2022
module geometry
    implicit none
    real, parameter :: pi = 4.*atan(1.)
    public :: pi,area
    private

    contains
    ! A function to calculate the area of a circle.
    real function area(r)
        real, intent(in) :: r
        area = pi*r**2
    end function area

end module geometry