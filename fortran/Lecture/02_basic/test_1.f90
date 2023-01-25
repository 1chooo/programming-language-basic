program test_1

  implicit none

  real :: time = 10.0

  write(*, *) "Time = ", tmie   ! Error: This name does not have a type, and must have an explicit type. [TMIE]

  stop
end program test_1
