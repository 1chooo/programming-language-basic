program power

  ! Purpose:
  !   To calculate the current, real, reactive and apparent power,
  !   and the power factor supplied to a load.

  implicit none

  ! Data dictionary: declare constants
  real, parameter :: DEG_2_RAD = 0.01745329   ! Deg to radians factor

  ! Data dictionary: declare variable types, definitions and units.
  real :: amps      ! Current in the load (A)
  real :: p         ! Real power of load (W)
  real :: pf        ! Power factor of load (no units)
  real :: q         ! Reactive power of the load (VAR)
  real :: s         ! Apparent power of the load (VA)
  real :: theta     ! Impedance angle of the load (deg)
  real :: volts     ! Rms voltage of the power source (V)
  real :: z         ! Magnitude of the load impedance (ohms)

  ! Prompt the user for the rms voltages.
  write(*, *) "Enter the rms voltage of the source: "
  read(*, *) volts

  ! Prompt the user for the magnitude and anle of the impedance
  write(*, *) "Enter the magnitude and angle of the impedance "
  write(*, *) "in ohms and degrees: "
  read(*, *) z, theta

  ! Perform calculations
  amps = volts / z                            ! Rms current
  p = volts * amps * cos(theta * DEG_2_RAD)   ! Real power
  q = volts * amps * sin(theta * DEG_2_RAD)   ! Reactive power
  s = volts * amps                            ! Apparent power
  pf = cos(theta * DEG_2_RAD)                 ! Power factor

  ! Write out the results.
  write(*, *) "Voltage        = ", volts, " volts"
  write(*, *) "Impedance      = ", z, " ohms at ", theta, " degtees"
  write(*, *) "Current        = ", amps, " amps"
  write(*, *) "Real Power     = ", p, " watts"
  write(*, *) "Reactive Power = ", q, "VAR"
  write(*, *) "Apparent Power = ", s, "VA"
  write(*, *) "Power Factor   = ", pf

  ! Finish up.
  stop
end program power
