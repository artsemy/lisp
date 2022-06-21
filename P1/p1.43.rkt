#lang racket
(define (compose f g)
  (lambda (i) (f (g i))))

(define (repeated f n)
  (lambda (i)
    (if (= n 1)
        (f i)
        ((compose f (repeated f (- n 1))) i))
    ))

(define (square x) (* x x))
((repeated square 2) 5)