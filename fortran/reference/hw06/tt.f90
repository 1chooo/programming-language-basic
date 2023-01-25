implicit none
integer i
integer j
integer k
real pai	! 3.14
real d2r	! degree to radian
real theta	! angle
real p		! for sin value
real q		! for cos value
real a
real b
real xn
real y
!----------------------------------------
pai=acos(-1.)
d2r=pai/180.

theta=30.
p=sin(theta*d2r)
q=cos(theta*d2r)

print*,'p q=',p,q
stop
end
!
! HW 20201126;
!
a=3.0
b=3.0
do i=1,25
  n=i-1
  xn=(2.*n*pai)/24.
  print*,'xn=',xn
  y=y+(a*cos(xn)+b*sin(xn))
  print*,'y=',y
enddo
!
stop
