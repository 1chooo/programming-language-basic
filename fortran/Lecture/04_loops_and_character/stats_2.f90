program stats_2

  ! Purpose:
  !   To calculte mean and the standard deviation of 
  !   an input data set containing an arbitrary
  !   number of input values.

  implicit none

  ! Data dictionary: declare variable types, definition, and units.
  integer :: n = 0      ! The number of input samples.
  real :: std_dev = 0.  ! The standard deviation of the input samples.
  real :: sum_x = 0.    ! The sum of the input values.
  real :: sum_x2 = 0.   ! The sum of the squares of the input values.
  real :: x = 0.        ! An input data value.
  real :: x_bar         ! The average of the input samples.

  ! While Loop to read input values.
  do 

    ! Read in next value
    write(*, *) "Enter number: "
    read(*, *) x
    write(*, *) "The number is ", x

    ! Test for loop exit
    if (x < 0) exit

    ! Otherwise, accumulate sums.
    n = n + 1
    sum_x = sum_x + x
    sum_x2 = sum_x2 + x ** 2
  end do

  ! Check to see if we have enough input data.
  if (n < 2) then   ! Insufficient information
    write(*, *) "At least 2 values must be entered!"
  else              ! There is enough information,
                    ! so calculate the mean and 
                    ! standard deviation
    x_bar = sum_x / real(n)
    std_dev = sqrt((real(n) * sum_x2 - sum_x ** 2) / (real(n) * real(n - 1)))

    ! Tell user.
    write(*, *) "The mean of this data set is: ", x_bar
    write(*, *) "The standard deviation is:    ", std_dev
    write(*, *) "The number of data points is: ", n
  end if

  ! Finish up.
  stop
end program stats_2
