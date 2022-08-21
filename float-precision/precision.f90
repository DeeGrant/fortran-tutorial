! module to define the precision of real variables
module precision
    implicit none
    integer, parameter :: dp = selected_real_kind(P=10,R=30)
    integer, parameter :: sp = selected_real_kind(P=5,R=15)
    integer, parameter :: dp_alt = kind(0.d0) ! same as the double precision of zero
!    integer, parameter :: a=1.e10 ! same as 10.0**10 or 1.d10
    public :: dp,sp,print_kind_info

!    real(kind=dp) :: x ! example in defining the precision of a float

    private

contains
    ! routine to print information about precision
    subroutine print_kind_info
        real(sp) :: pi_single
        real(dp) :: pi_double

        print*,'sing prec is kind=',sp
        print*,'doub prec is kind=',dp
        print*,'kind of a double precision number is ',dp_alt

        pi_single = 4._sp*atan(1.0_sp)
        pi_double = 4._dp*atan(1.0_dp)
        print*,'pi is single is ',pi_single
        print*,'pi is double is ',pi_double

        pi_double = 4.*atan(1.0) ! it only calculates single precision on the right, but places it in a double var
        print*,'pi bad conv is  ',pi_double ! it has random digits after the single precision
    end subroutine print_kind_info

end module precision