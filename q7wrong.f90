!module q7 



!contains

character function given(string) result(substring)

character (len=10) :: string

!string = (/'a','b','c','d','e','f','g','h','i','j'/)
!string = (/('abcdefghij')/)
character :: substring
subtring = m,n
!character :: 
!string = string(n)
integer :: m,n
real :: r
  do n = 10,1,-1
    call random_number(r)
    m = r * n + 1
      if (n >= m) then
      print*,substring (m:n)
      end if 
  end do   


end function

!end module q7 



