implicit none
!------------------------------
! 20201210: To process sounding data;
!------------------------------
integer i
integer j
integer k
integer hght ! height;
integer drct ! wind direction;
integer sknt ! wind speed knot;
integer ilinein
integer len_trim
integer relh ! relative humidity;
real pres ! pressure; 
real temp ! temperature; 
real dwdt ! dew point temperature; 
real mixr ! mixing ratio for water vapor;
real thta ! potential temperature; 
real thte ! equivalent potential temperature;
real thtr ! virtual potential temperature;
character*100 linein
!-----------------------------
open(1,file='47918.text',form='formatted')
10 continue
read(1,'(a)',end=20) linein
ilinein=len_trim(linein)
!print*,'ilinein=',ilinein
print*,linein(1:ilinein)
goto 10
20 continue
close (1)
!
!
stop
end
