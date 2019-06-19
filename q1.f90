

subroutine trial (x, n, mean, variance, ok)

integer, intent(in) :: n

real, dimension(n),  intent (in) :: x

integer :: i

logical, intent (out) :: ok

real, intent (out) :: mean, variance


ok = i > 1

mean = 0.0
variance = 0.0

if (ok) then

  do i = 1,n
  
  mean = mean + i


  end do
  
  mean = mean/n

  do i = 1,n
  variance = variance + (i -mean)**2


  end do 
  
  variance = variance/(n-1) 
  
end if

end subroutine trial

program q1

implicit none

! integer,parameter :: n = 5
integer :: n

real, allocatable, dimension(:) :: x

integer :: i

logical  :: ok

real :: mean, variance

call trial (x, n, mean, variance, ok)

end program q1
