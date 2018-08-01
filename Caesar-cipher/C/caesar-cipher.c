#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define caesar(x) rot(12, x)
#define decaesar(x) rot(12, x)
#define decrypt_rot(x, y) rot((26-x), y)

void rot(int c, char *str)
{
	int l = strlen(str);
	const char *alpha[2] = { "abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"};
	
	int i;
	for (i = 0; i < l; i++)
	{
		if (!isalpha(str[i]))
			continue;
		
		str[i] = alpha[isupper(str[i])][((int)(tolower(str[i])-'a')+c)%26];
	}
}


int main()
{
	char str[] = "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.";

	caesar(str);
	printf("%s\n", str);
	decaesar(str);
	printf("%s\n", str);
	
	return 0;
}
