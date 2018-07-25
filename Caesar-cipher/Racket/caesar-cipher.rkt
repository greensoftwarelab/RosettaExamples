#lang racket

(define A (char->integer #\A))
(define Z (char->integer #\Z))
(define a (char->integer #\a))
(define z (char->integer #\z))

(define (rotate c n)
  (define cnum (char->integer c))
  (define (shift base) (integer->char (+ base (modulo (+ n (- cnum base)) 26))))
  (cond [(<= A cnum Z) (shift A)]
        [(<= a cnum z) (shift a)]
        [else c]))

(define (caesar s n)
  (list->string (for/list ([c (in-string s)]) (rotate c n))))

(define (encrypt s) (caesar s 1))
(define (decrypt s) (caesar s -1))

(define name "the action of a caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet. the cipher illustrated here uses a left shift of three, so that each occurrence of e in the plaintext becomes b in the ciphertext.in cryptography, a caesar cipher, also known as caesars cipher, the shift cipher, caesars code or caesar shift, is one of the simplest and most widely known encryption techniques. it is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. for example, with a left shift of 3, d would be replaced by a, e would become b, and so on. the method is named after julius caesar, who used it in his private correspondence. the encryption step performed by a caesar cipher is often incorporated as part of more complex schemes, such as the vigenère cipher, and still has modern application in the rot13 system. as with all single-alphabet substitution ciphers, the caesar cipher is easily broken and in modern practice offers essentially no communication security.")

(display (encrypt name))
(display (decrypt name))
