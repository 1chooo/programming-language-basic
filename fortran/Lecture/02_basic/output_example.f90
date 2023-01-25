program output_example
  
  integer :: ix
  real :: theta

  ix = 1
  ! test = .TRUE.
  theta = 3.141593

  write (*, *) "IX =         ", ix
  write (*, *) "THETA =      ", theta
  write (*, *) "COS(THETA) = ", cos(theta)
  write (*, *) real(ix), nint(theta)

  stop

end program output_example
