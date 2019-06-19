program q3
implicit none

integer :: m, n, k, max, temp
real, dimension(3,3) :: A, B, C
A = reshape((/ 1, 2, 3, 4, 5, 6, 7, 8, 9 /), shape(A))

B = reshape((/ 1, 2, 3, 4, 5, 6, 7, 8, 9 /), shape(B))
max = 3
do n = 1,max

  do m = 1,max

    temp = 0
    do k = 1,max
      temp = temp + A(n, k)*B(k, m)
          end do
    C(n, m)=temp
  end do
end do
 
print*, C
end program q3
