implicit none
integer i
integer j
integer k
integer isum ! for all numbers;
integer iodd ! for odd numbers;
integer ieven! for even numbers;
!-------------------------------------------
isum=0
iodd=0
ieven=0

do i=1,100
	isum=isum+i
if (mod(i,2).eq.0) ieven=ieven+i !even numbers;
if (mod(i,2).ne.0) iodd=iodd+i !oddnumbers;
print*,' i isum ieven iodd=',i,isum,ieven,iodd

enddo
print*,'isum ieven iodd=',isum,ieven,iodd
!
stop
end
