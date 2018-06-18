#lang racket
(define (ackermann m n)
  (cond [(zero? m) (add1 n)]
        [(zero? n) (ackermann (sub1 m) 1)]
        [else (ackermann (sub1 m) (ackermann m (sub1 n)))]))

(for ([m 4])
  (for ([n 13])
    (displayln (ackermann m n))))
