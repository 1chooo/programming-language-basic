program temp_conversion

  ! Purpose:
  !   To convert an input temperature from degrees Fahrenheit to
  !   an output temperature in kelvins.

  implicit none   ! Force explicit declaration of variables

  ! Data dictionary: declare variable types, definitions, and units
  real :: temp_f  ! Temperature in degrees Fahrenheit
  real :: temp_k  ! Temperature in kelvins

  ! Prompt the user for the input temperature.
  write(*, *) "Enter the temperature in degrees Fahrenheit: "
  read(*, *) temp_f

  ! Convert to kelvins.
  temp_k = (5. / 9.) * (temp_f - 32) + 273.15

  ! Write out the result.
  write(*, *) temp_f, " degrees Fahrenheit = ", temp_k, " kelvins"

  ! Finish up.
  stop
end program temp_conversion
