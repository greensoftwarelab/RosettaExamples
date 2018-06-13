#lang racket
(define (remove-duplicates lon)
  (foldr (lambda (x y) (cons x (filter (lambda (z) (not (= x z))) y))) empty lon))
(define lst (list 1 2 3 4 5))
(define unq (remove-duplicates lst))
(printf "~a\n" unq)
