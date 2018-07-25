class Caesar {
  int _key;

  Caesar(this._key);

  int _toCharCode(String s) {
    return s.codeUnitAt(0);
  }

  String _fromCharCode(int ch) {
    return new String.fromCharCodes([ch]);
  }

  String _process(String msg, int offset) {
    StringBuffer sb=new StringBuffer();
    for(int i=0;i<msg.length;i++) {
      int ch=msg.codeUnitAt(i);
      if(ch>=_toCharCode('A')&&ch<=_toCharCode('Z')) {
        sb.write(_fromCharCode(_toCharCode("A")+(ch-_toCharCode("A")+offset)%26));
      }
      else if(ch>=_toCharCode('a')&&ch<=_toCharCode('z')) {
        sb.write(_fromCharCode(_toCharCode("a")+(ch-_toCharCode("a")+offset)%26));
      } else {
        sb.write(msg[i]);
      }
    }
    return sb.toString();
  }

  String encrypt(String msg) {
    return _process(msg, _key);
  }

  String decrypt(String msg) {
    return _process(msg, 26-_key);
   }
}

void trip(String msg) {
  Caesar cipher=new Caesar(12);

  String enc=cipher.encrypt(msg);
  String dec=cipher.decrypt(enc);
  print("$enc");
  print("$dec");
  //Expect.equals(msg,dec);
}

main() {
 // Caesar c2=new Caesar(12);
  //print(c2.encrypt("the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security."));
  //Caesar c20=new Caesar(20);
  //print(c20.encrypt("HI"));

  // try a few roundtrips

  trip("the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.");
  //trip("A");
  //trip("z");
  //trip("Caesar cipher");
  //trip(".-:/\"\\!");
  //trip("The Quick Brown Fox Jumps Over The Lazy Dog.");
}
