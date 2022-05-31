#lang racket
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (min-of-three a b c)
  (cond ((and (<= a b) (<= a c)) a)
        ((and (<= b a) (<= b c)) b)
        (else c)))
(define (sum-square-two-max a b c) (cond
                                     ((= (min-of-three a b c) a) (sum-of-squares b c))
                                     ((= (min-of-three a b c) b) (sum-of-squares a c))
                                     ((= (min-of-three a b c) c) (sum-of-squares a b))))
(sum-square-two-max 3 5 5)