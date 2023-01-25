implicit none
integer i
integer j
integer k
real p
real x
real n
real p1
real p2
real p3
real sum
!-------------------------------
sum=0.
x=1.0
do 10 j=1,10
  n=float(j) 
  print*,'-------------' 
  print*,'j=',j
  p1=x**n
  n=1.0
  do i=1,j
    n=n*float(i)
    print*,'i n=',i,n
  enddo
  p2=n 
  print*,'j p1 p2 p1/p2=',j,p1,p2,p1/p2
  p3=p1/p2
  sum=sum+p3
10 continue
print*,'x sum=',x,sum
print*,'final sum=',sum+1
print*,'ana exp(1.)',exp(1.)
stop
end

