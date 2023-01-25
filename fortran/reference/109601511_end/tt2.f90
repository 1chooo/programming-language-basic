implicit none
integer i 
integer j
integer k
integer p(12,4) 
integer sum
integer nabove
integer nline
character*1000 linein
real ave
!----------------------------------------------
open(1,file='CO2.txt',form='formatted')
read(1,'(a)')linein
nline=0
j=0
10 continue
j=j+1
read(1,*,end=20) (p(i,j),i=1,12)
nline=nline+1
goto 10
20 continue
close(1)
write(*,'(12(i2,2x))') p
sum=0
do j=1,nline
  do i=1,12
    sum=sum+p(i,j)
  enddo
enddo
ave=float(sum)/float(48)
print*,'sum ave=',sum,ave

!print*,'Annual average of CO2 in 2017=',
!print*,'Annual average of CO2 in 2018=',
!print*,'Annual average of CO2 in 2019=',
!print*,'Annual average of CO2 in 2020='
stop
end
