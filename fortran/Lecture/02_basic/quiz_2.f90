program quiz_2

  integer :: i, j, k
  real :: a, b, c

  read(*, *) i, j, a
  read(*, *) b, k

  c = sin((3.141593 / 180) * a)

  write(*, *) i, j, k, a, b, c

  stop

end program quiz_2
