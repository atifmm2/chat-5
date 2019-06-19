real function calculate(r,l) result(v) 

real :: pi = 3.1415
real :: r,l
!real :: v

v = pi * r**2 *l

end function calculate

program q5
implicit none
real :: calculate
real :: r=2.0
real :: l=1.5
print*,calculate(r,l)
 

end program q5
