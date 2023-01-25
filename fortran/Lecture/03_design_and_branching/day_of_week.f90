program day_of_week

  ! Purpose:
  !   This program displays the day of week corresponding 
  !   to a input integer value.

  implicit none

  ! Data dictionary: declare variable types, definitions, and units.
  character(len = 11) :: c_day  ! Character string containing day
  integer :: i_day              ! Integer day of week

  ! Prompt the user for the numeric day of the week.
  write(*, *) "Enter the day of the week (1-7): "
  read(*, *) i_day

  ! Get the corresponding day of the week.
  select case (i_day)
  case(1)
    c_day = "Sunday"
  case(2)
    c_day = "Monday"
  case(3)
    c_day = "Tuesday"
  case(4) 
    c_day = "Wednesday"
  case(5)
    c_day = "Thursday"
  case(6)
    c_day = "Friday"
  case(7)
    c_day = "Saturday"
  case default 
    c_day = "Invalid day"
  end select

  ! Write the resulting day
  write(*, *) "Day = ", c_day

  ! Finish up.
  stop
end program day_of_week
