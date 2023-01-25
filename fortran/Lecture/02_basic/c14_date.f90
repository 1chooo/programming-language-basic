program c14_date

  ! Purpose: 
  !   To calculate the age of an organic sample from the percentage
  !   of the original carbon 14 remaining in the sample.

  implicit none

  ! Data dictionary: declare constants
  real, parameter :: LAMDA = 0.00012097   ! The radioactive decay
                                          ! constant of carbon 14,
                                          ! in units of 1 / years.

  ! Data dictionary: declare variable types, definitions, and units
  real :: age       ! The age of the sample (years)
  real :: percent   ! The percentage of carbon 14 remaining at the 
                    ! time of the measurement (%)
  real :: ratio     ! The ratio of the carbon 14 remaining at the 
                    ! time of the measurement to the original amount
                    ! of carbon 14 (no units)

  ! Prompt the user for the percentage of C-14 remaining.
  write(*, *) "Enter the percentage of C-14 remaining:"
  read(*, *) percent

  ! Echo the user's input value.
  write(*, *) "The remaining carbon 14 = ", percent, " %."

  ! Perform calculations.
  ratio = percent / 100.              ! Convert to fractional ratio.
  age = (-1.0 / LAMDA) * log(ratio)   ! Get age in years.

  ! Tell the user about the age of the sample.
  write(*, *) "The age of the sample is ", age, "years."

  ! Finish up.
  stop
end program c14_date
