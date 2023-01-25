program my_first_program

  ! Purpose: 
  !   To illustrate some of the basic featuresof a Fortran program.

  ! Declare the variables used in this program.

  integer :: i, j, k  ! All varibale are integers.

  ! Get two values to store in variables i and j

  write (*, *) "Enter the numbers to multiply: "
  read (*, *) i, j

  ! Mutiply the numbers together

  k = i * j

  ! Write out the result.

  write (*, *) "Result = ", k

  ! Finish up.

  stop

end program my_first_program
