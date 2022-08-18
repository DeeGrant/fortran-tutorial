! A module containing funcions to compute the area of a circle
! Written by Dee Grant, 2022
module geometry
    implicit none
    real, parameter :: pi = 4.*atan(1.)
    public :: area, pi
    private

    contains
    !
    ! A fuction to calculate the area of a circle
    !
    real function area(r)
        real, intent(in) :: r

        area = pi*r**2

    end function area

end module geometry