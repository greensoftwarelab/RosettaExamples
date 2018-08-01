#include <string>
#include <iostream>
#include <algorithm>
#include <cctype>

class MyTransform {
private :
   int shift ;
public :
   MyTransform( int s ) : shift( s ) { }

  char operator( )( char c ) {
      if ( isspace( c ) )
	 return ' ' ;
      else {
	 static std::string letters( "abcdefghijklmnopqrstuvwxyz" ) ;
	 std::string::size_type found = letters.find(tolower( c )) ;
	 int shiftedpos = ( static_cast<int>( found ) + shift ) % 26 ;
	 if ( shiftedpos < 0 ) //in case of decryption possibly
	    shiftedpos = 26 + shiftedpos ;
	 char shifted = letters[shiftedpos] ;
	 return shifted ;
      }
  }
} ;

int main( ) {
   std::string input = "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.";
   int myshift = 12 ;
  
   std::transform ( input.begin( ) , input.end( ) , input.begin( ) ,
	 MyTransform( myshift ) ) ;
   std::cout << input << std::endl ;
   myshift *= -1 ; //decrypting again
   std::transform ( input.begin( ) , input.end( ) , input.begin( ) ,
	 MyTransform( myshift ) ) ;
   std::cout << input << std::endl ;
   return 0 ;
}
