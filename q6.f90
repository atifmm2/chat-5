module game

public :: shuffle
public :: deal

contains

  subroutine shuffle(cards)

  integer, dimension(52) :: cards
  real :: r
  integer :: left, choice, temp

    do left = 52,1,-1
      call random_number(r)
      choice = r*left + 1
      temp = cards(left)
      cards(left) = cards(choice)
      cards(choice) = temp
    end do 
  print*,cards
  end subroutine shuffle

  subroutine deal(cards) !result(x)
 
    integer :: i, j, k  
    integer :: cards(52)
    integer :: a
   ! cards = (/(a, a=1,52)/)
   ! call shuffle(cards)
    do j = 1,4
      do k = 1,4
      print*,cards((j-1)*4+k)
      end do
    end do

  end subroutine deal


end module game





