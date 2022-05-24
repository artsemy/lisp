#lang racket
(define (even? n) (= (remainder n 2) 0))
(define (square n) (* n n))
(define (expt b n)
  (define (fast-expt b n a)
    (cond ((= n 0) a)
          ((even? n) (fast-expt (square b) (/ n 2) a))
          (else (fast-expt b (- n 1) (* a b)))))
          
  (fast-expt b n 1))

(provide expt)