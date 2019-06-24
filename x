q6.f90:32:17:

       x = shuffle(j)
                 1
Error: Unexpected use of subroutine name ‘shuffle’ at (1)
q6.f90:28:17:

     cards = (/(a, a=1,52)/)
                 1
Error: Loop variable at (1) must be INTEGER
q6.f90:16:4:

     card(choice) = i*left + 1
    1
Error: The function result on the lhs of the assignment at (1) must have the pointer attribute.
q6.f90:18:4:

     card(left) = card(choice)
    1
Error: The function result on the lhs of the assignment at (1) must have the pointer attribute.
q6.f90:19:4:

     card(choice) = temp
    1
Error: The function result on the lhs of the assignment at (1) must have the pointer attribute.
