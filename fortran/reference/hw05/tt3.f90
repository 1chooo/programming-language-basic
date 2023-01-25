implicit none
integer i
integer j
integer k
integer plon
parameter (plon=1000) ! set 100 grids;
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
real area !area;
real area2 ! area2; analytical;
real error !error estimation;
!-----------------------------------------------
pi = acos(-1.)
print*,'pi=',pi
!
dx = (xr-xl)/float(plon)
!print*,'dx=',dx
write(*,'(f3.1)') dx
area = 0.
do i=1,plon
	x = xl+float(i-1)*dx +0.5*dx
	y = sqrt(r**2. - x**2.)
	area = area +abs(dx*y)
enddo
 area = area*2
 print*,'computational area=',area
!compute analytical area;
 area2=pi*r*r
 print*,'analytical area=',area
!error estimation;
 error=area-area2
 print*,'error=',error,'with respect to plon=',plon 
stop
end
