#lang racket
(define (funk-v1 n) (funk-rec n))
(define (funk-rec n)
  (cond ((< n 3) n)
        (else (+ (funk-rec (- n 1))
                 (funk-rec (- n 2))
                 (funk-rec (- n 3))))))

(define (funk-v2 n) (funk-iter 2 1 0 n))
(define (funk-iter x2 x1 x0 n)
  (cond ((= n 0) x0)
        (else (funk-iter (+ x2 x1 x0) x2 x1 (- n 1)))))

(provide funk-v1 funk-v2)