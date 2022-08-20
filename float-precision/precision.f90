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
!        real(sp) :: pi_single
!        real(dp) :: pi_double

        print*,'sing prec is kind=',sp
        print*,'doub prec is kind=',dp
        print*,'kind of a double precision number is ',dp_alt
    end subroutine print_kind_info

end module precision