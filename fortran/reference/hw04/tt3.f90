implicit none
integer i
integer j
integer k
integer plon
parameter (plon=100) ! set 100 grids;
real x
real y
real r	! for radius;
parameter (r = 5.)
real dx
real xl ! left-hand side boundary;
parameter (xl = -5.)
real xr	! right-hand side boundary;
parameter (xr = 5.)
real pi !3.14;
!-----------------------------------------------
pi = acos(-1.)
!
dx = (xr-xl)/float(plon)

do i=1,plon
	y = sqrt(r**2. - x**2.)
enddo
stop
end
