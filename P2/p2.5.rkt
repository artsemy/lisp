#lang racket
(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car x)
  (define (iter a b)
    (if (= 0 (remainder a 2))
        (iter (/ a 2) (+ b 1))
        b))
  (iter x 0))

(define (cdr x)
  (define (iter a b)
    (if (= 0 (remainder a 3))
        (iter (/ a 3) (+ b 1))
        b))
  (iter x 0))

(car (cons 3 4))
(cdr (cons 3 4))