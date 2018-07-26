#lang racket

(define (quicksort < l)
  (match l
    ['() '()]
    [(cons x xs)
     (let-values ([(xs-gte xs-lt) (partition (curry < x) xs)])
       (append (quicksort < xs-lt)
               (list x)
               (quicksort < xs-gte)))]))

(define main
  (println (quicksort < (list 1 2 9 4 6)))
)


