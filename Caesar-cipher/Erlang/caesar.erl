%% Ceasar cypher in Erlang for the rosetta code wiki.
%% Implemented by J.W. Luiten

-module(caesar1).
-export([main/0]).

%% rot: rotate Char by Key places
rot(Char,Key) when (Char >= $A) and (Char =< $Z) or
                   (Char >= $a) and (Char =< $z) ->
  Offset = $A + Char band 32,
  N = Char - Offset,
  Offset + (N + Key) rem 26;
rot(Char, _Key) ->
  Char.

%% key: normalize key.
key(Key) when Key < 0 ->
  26 + Key rem 26;
key(Key) when Key > 25 ->
  Key rem 26;
key(Key) ->
  Key.

main() -> 
  Key = 12,
  Encode = key(Key),
  Decode = key(-Key),
  PlainText = "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenere cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.",

  %%io:format("Plaintext ----> ~s~n", [PlainText]),

  CypherText = lists:map(fun(Char) -> rot(Char, Encode) end, PlainText),
  io:format("~s~n", [CypherText]),

  PlainText = lists:map(fun(Char) -> rot(Char, Decode) end, CypherText),
  io:format("~s~n", [PlainText]),
  halt(0).
