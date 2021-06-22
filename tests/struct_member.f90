pure function name(self)
    class(*), intent(in) :: self
    logical :: finished
    integer :: ii
    finished = all(self%dep(:self%ndep)%done)
end function name

pure function find_name(self, name) result(pos)
    class(*), intent(in) :: self
    character(len=*), intent(in) :: name
    integer :: pos
    integer :: ii

    pos = 0
    do ii = 1, self%ndep
      if (name == self%dep(ii)%name) then
        pos = ii
        exit
      end if
    end do
end function find_name
