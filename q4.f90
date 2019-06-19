program q4

implicit none

character, dimension(5) :: string
character :: res
character :: smallest
string  = (/"e","a","i","o","u"/) 

res =  smallest(string)
print*, res 
end program q4

character function smallest(string) result (value)

character, dimension(5) :: string
! character :: value
integer :: i, j 
logical :: is_smallest
do i=1,5
  is_smallest= .true.
  do j = 1,5
    if (i == j) continue
    
    if (string (j) < string (i)) then
      is_smallest = .false.
    end if 
  end do  
  if (is_smallest .eqv. .true.) then
  value = string(i)
  end if
end do

end function smallest

