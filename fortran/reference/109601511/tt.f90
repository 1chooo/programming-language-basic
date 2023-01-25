implicit none
integer i
integer j
integer k
integer plon
parameter (plon=70)
real x
real y
real dx
real xl
parameter (xl=-2.)
real xr 
parameter (xr=5.)
dx=(xr-xl)/float(plon)
area=0.
do i=1,plon
x=xl+float(i-1)*dx
y=x**4-3*x**3-4*x**2
area=area+abs(dx*y)
print*,'area=',area
