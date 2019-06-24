program q6
use game
implicit none

integer :: cards(52)
integer :: a
cards = (/(a, a=1,52)/)
call shuffle(cards)
call deal(cards)

end program q6
