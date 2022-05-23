#lang racket
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (sum-square-two-max a b c) (cond
                                     ((= (min a b c) a) (sum-of-squares b c))
                                     ((= (min a b c) b) (sum-of-squares a c))
                                     ((= (min a b c) c) (sum-of-squares a b))))
(sum-square-two-max 3 5 5)
