program quiz_1

  integer :: i
  real :: a

  a = 0.05
  i = NINT(2. * 3.141493 / a)
  a = a * (5 / 3)
  
  write(*, *) i, a

  stop

end program quiz_1
