implicit none
real r
real pi
real area
real g
real p
real m
real d
pi=3.14
g=9.8
r=6371000
p=101.325
!-------------------------------------------
area=4*pi*(r**2)
print*,'Earth surface area(m**2)=',area
!------------------------------------------
m=p*area/g
print*,'Total mass of the atmosphere(kg)=',m
!-------------------------------------------
d=(5.972E+027)/((4/3)*pi*((r*100)**3))
print*,'Earth density(g/cm**3)=',d

stop
end
