module string_type

  type string
    integer :: length
    character (len=80) :: string_data
  end type string

  interface assignment(=)
    module procedure c_to_s_assign, s_to_c_assign   
  end interface

  interface len
    module procedure string_len  
  end interface 
 
  interface operator(//)
    module procedure string_concat
  end interface

contains
  
  subroutine c_to_s_assign(s,c)
    type(string), intent(out) :: s
    character (len=*), intent(in) :: c 
    s%string_data = c
    s%length = len(c)
      if (s%length > 80) s%length = 80
  end subroutine c_to_s_assign

  subroutine s_to_c_assign(c,s)
    type(string), intent(in) :: s
    character (len=*), intent(out) :: c
    c = s%string_data (1:s%length)
  end subroutine s_to_c_assign

  function string_len(s)
    integer :: string_len
    type(string) :: s
    string_len = s%length
  end function string_len
  
  function string_concat(s1,s2)
    type(string), intent(in) :: s1,s2
    type(string)             :: string_concat
    string_concat%string_data = s1%string_data(1:s1%length) // s2%string_data(1:s2%length) 
    string_concat%length = s1%length + s2%length
      if (string_concat%length > 80) string_concat%length = 80
   end function string_concat

end module string_type
