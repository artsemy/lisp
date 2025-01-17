#lang racket
(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? prev-guess curr-guess)
  (< (abs (- prev-guess curr-guess)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 0.0000000625)