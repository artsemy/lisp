#lang racket
(define (cont-frac n d k)
  (define (iter l)
    (if (< l k)
        (/ (n l) (+ (d l) (iter (+ l 1))))
        (/ (n l) (d l))))
  (iter 1))

0.61803
(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 5)
(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 10)
(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 20)

(define (cont-frac-v2 n d k)
  (define (loop l result)
    (if (< l 1)
        result
        (loop (- l 1) (/ (n l) (+ (d l) result)))))
  (loop k 0.0))

0.61803
(cont-frac-v2 (lambda (i) 1.0) (lambda (i) 1.0) 5)
(cont-frac-v2 (lambda (i) 1.0) (lambda (i) 1.0) 10)
(cont-frac-v2 (lambda (i) 1.0) (lambda (i) 1.0) 20)