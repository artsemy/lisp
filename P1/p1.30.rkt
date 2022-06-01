#lang racket
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

;-----------------------------------------------------------
(define (sum-v2 term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

;-----------------------------------------------------------
(define (next x) (+ x 1))
(define (check? f) (= (sum f 0 next 10) (sum-v2 f 0 next 10)))

(define (identity x) x)
(define (square x) (* x x))
(define (f1 x) (+ x (/ 1.0 3)))

(check? identity)
(check? square)
(check? f1)

(sum f1 0 next 10)
(sum-v2 f1 0 next 10)