#lang racket
(define (factorial n)
  (if (= 0 n)
      1
      (* n (factorial (- n 1)))))

(define f (factorial 15))
(printf "~a\n" f)

