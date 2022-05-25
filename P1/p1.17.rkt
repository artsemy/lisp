#lang racket
(define (even? n) (= (remainder n 2) 0))
(define (double a) (+ a a))
(define (halve a) (/ a 2))
(define (* a b)
  (define (fast-m a b)
    (cond ((= b 0) 0)
          ((even? b) (fast-m (double a) (halve b)))
          (else (+ a (fast-m a (- b 1))))))
  (fast-m a b))

(provide *)