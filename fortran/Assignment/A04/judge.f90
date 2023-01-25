Program Judge

	logical ljudge
	ljudge = .true.

	print *, "ljudge = ", ljudge

	if (ljudge) then
		print *, "mod(3, 2) = ", mod(3, 2)
		print *, "mod(4, 2) = ", mod(4, 2)
	end if


	ljudge = .false.
	print *, "ljudge = ",ljudge

	if (ljudge) then
		print *, "mod(3, 2) = ", mod(3, 2)
		print *, "mod(4, 2) = ", mod(4, 2)
	end if

	stop
end Program Judge