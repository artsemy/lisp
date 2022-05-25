#lang racket
(define (even? n) (= (remainder n 2) 0))
(define (double a) (+ a a))
(define (halve a) (/ a 2))
(define (* a b)
  (define (fast-m a b add)
    (cond ((= b 0) add)
          ((even? b) (fast-m (double a) (halve b) add))
          (else (fast-m a (- b 1) (+ add a)))))
  (fast-m a b 0))

(define (expt b n)
  (define (fast-expt b n a)
    (cond ((= n 0) a)
          ((even? n) (fast-expt (* b b) (halve n) a))
          (else (fast-expt b (- n 1) (* a b)))))
  (fast-expt b n 1))

(provide expt *)