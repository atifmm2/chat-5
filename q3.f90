
subroutine shuffle(cards)

  integer :: cards(52)
  real :: r
  integer :: left, choice, i, temp
  do left = 52,1,-1
  call random_number(r)
  choice = r*left + 1
  temp = cards (left) 
   cards(left)=cards(choice)
   cards(choice)=temp
   end do

end subroutine shuffle


program q3

implicit none


  integer :: i 
  integer :: cards(52)
  cards = (/(i, i=1,52)/)
  call shuffle(cards)
  print*,cards
end program q3


