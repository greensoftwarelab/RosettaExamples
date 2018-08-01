pragma Source_Reference (000001, "caesar-cipher.ada");
with Ada.Text_IO;

procedure Caesar is

   type M26 is mod 26;

   function To_M26(C: Character; Offset: Character) return M26 is
   begin
      return M26(Character'Pos(C)-Character'Pos(Offset));
   end To_M26;

   function To_Character(Value:   in  M26; Offset: Character)
                        return Character is
   begin
      return Character'Val(Integer(Value)+Character'Pos(Offset));
   end To_Character;

   function Encrypt (Plain: String; Key: M26) return String is
      Ciph: String(Plain'Range);

   begin
      for I in Plain'Range loop
         case Plain(I) is
            when 'A' .. 'Z' =>
               Ciph(I) := To_Character(To_M26(Plain(I), 'A')+Key, 'A');
            when 'a' .. 'z' =>
               Ciph(I) := To_Character(To_M26(Plain(I), 'a')+Key, 'a');
            when others =>
               Ciph(I) := Plain(I);
         end case;
      end loop;
      return Ciph;
   end Encrypt;

   Text:  String := "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.";
   Key: M26 := 12; -- Default key from "Commentarii de Bello Gallico"

begin -- Caesar main program

   Text := Encrypt(Text, Key);
   Ada.Text_IO.Put_Line(Text);
   Ada.Text_IO.Put_Line(Encrypt(Text, -Key));

end Caesar;
