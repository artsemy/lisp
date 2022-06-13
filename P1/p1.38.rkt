#lang racket
(define (cont-frac n d k)
  (define (iter l)
    (if (< l k)
        (/ (n l) (+ (d l) (iter (+ l 1))))
        (/ (n l) (d l))))
  (iter 1))

(define (e n)
  (+ (cont-frac (lambda (i) 1.0)
             (lambda (i)
               (if (= (remainder (- i 1) 3) 1)
                   (* (+ (quotient i 3) 1) 2)
                   1.0))
             n) 2))

2.718281828459045
(e 5)
(e 10)
(e 20)