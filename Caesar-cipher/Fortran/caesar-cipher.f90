program Caesar_Cipher
  implicit none

  integer, parameter :: key = 12
  character(1110) :: message = "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security."

  call encrypt(message)
  write(*, "(2a)"), message
  call decrypt(message)
  write(*, "(2a)"), message

contains

subroutine encrypt(text)
  character(*), intent(inout) :: text
  integer :: i

  do i = 1, len(text)
    select case(text(i:i))
      case ('A':'Z')
        text(i:i) = achar(modulo(iachar(text(i:i)) - 65 + key, 26) + 65)
      case ('a':'z')
        text(i:i) = achar(modulo(iachar(text(i:i)) - 97 + key, 26) + 97)
    end select
  end do
end subroutine

subroutine decrypt(text)
  character(*), intent(inout) :: text
  integer :: i

  do i = 1, len(text)
    select case(text(i:i))
      case ('A':'Z')
        text(i:i) = achar(modulo(iachar(text(i:i)) - 65 - key, 26) + 65)
      case ('a':'z')
        text(i:i) = achar(modulo(iachar(text(i:i)) - 97 - key, 26) + 97)
    end select
  end do
end subroutine

end program Caesar_Cipher
