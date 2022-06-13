#lang racket
(define (cont-frac n d k)
  (define (iter l)
    (if (< l k)
        (/ (n l) (+ (d l) (iter (+ l 1))))
        (/ (n l) (d l))))
  (iter 1))

(define (tan-cf x k)
  (/ (cont-frac (lambda (i) (- (* x x)))
                (lambda (i) (- (* 2 i) 1.0))
                k)
     (- x)))

0.64836082745
(tan-cf 10 5)
(tan-cf 10 10)
(tan-cf 10 20)