program q4
implicit none

character, dimension(5) :: string
character :: smallest
character :: res
string  = (/"e","a","i","o","u"/)

res = smallest(string)
print*,res
end program q4

character function smallest(string) result (value)

character, dimension(5) :: string
character :: small_ans
integer :: i

small_ans = string (1)
do i=1,5
  if ( small_ans > string (i)) then
    small_ans = string(i)
  end if
end do

end function smallest
