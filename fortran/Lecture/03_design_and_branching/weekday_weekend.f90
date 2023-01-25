program weekday_weekend

  ! Purpose: 
  !   This program accepts a character string
  !   containing a day of the week, and responds
  !   with a message specifying whether the day
  !   is a weekday or falls on the weekend.

  implicit none

  ! Declare the variables used in this program.
  character(len = 11) :: c_day  ! Character string containing day
  character(len = 11) :: c_type ! Character string with day type

  ! Prompt the user for the day of the week
  write(*, *) "Enter the name of the day: "
  read(*, *) c_day

  ! Get the corresponding day of the week.
  select case (c_day)
  case("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
    c_type = "Weekday"
  case("Saturday", "Sunday")
    c_type = "Weekend"
  case default 
    c_type = "Invalid day"
  end select

  ! Write the resulting day type.
  write(*, *) "Day Type = ", c_type

  ! Finish up.
  stop
end program weekday_weekend
