implicit none
integer i
integer j
integer k
real n 
real n2
!-----------------------------
do j=1,4
  n=(2.*float(j-1))+1.
  n=1.
  do i=1,int(n)
     n2=n2*float(i)
  enddo
  print*,'j n n2=',j,n,n2
enddo
stop
end
