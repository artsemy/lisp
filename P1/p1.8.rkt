#lang racket
(define (average x y) (/ (+ x y) 2))

(define (next-guess x guess) (/ (+ (/ x (* guess guess))
                                (* 2 guess))
                             3))

(define (improve guess x) (next-guess x guess))

(define (good-enough? prev-guess curr-guess)
  (< (abs (- prev-guess curr-guess)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (curt x) (sqrt-iter 1.0 x))

(curt 8)