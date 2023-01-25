! This program is to familiar with the loop,
! and learn to use the if statement.

Program sum

  implicit none

  integer :: i
  integer :: total
  integer :: oddSum
  integer :: evenSum

  total = 0
  oddSum = 0
  evenSum = 0


  do i = 1, 100 
    total = total + i

    if (mod(i, 2) == 0) then
      evenSum = evenSum + i
    end if

    if (mod(i, 2) /= 0) then 
      oddSum = oddSum + i
    end if

    print *, "num sum evenSum oddSum = ", i, total, evenSum, oddSum
  enddo

  print *, "sum evenSum oddSum = ", total, evenSum, oddSum

  stop

end Program sum
