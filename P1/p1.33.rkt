#lang racket
(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a) (iter (next a) (combiner (term a) result)))
          (else (iter (next a) result))))
  (iter a null-value))
;-----------------------------------------------------------------

(define (square x) (* x x))

(define (prime? n)
  (define (divides? a b) (= (remainder b a) 0))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  (define (smallest-divisor n)
    (find-divisor n 2))
  (= n (smallest-divisor n)))

(define (sum-sq-prime a b)
  (define (next x) (+ x 1))
  (filtered-accumulate prime? + 0 square a next b))
;------------------------------------------------------------------

(define (gcd a b) (if (= b 0) a (gcd b (remainder a b))))

(define (mult-pos-prime-n n)
  (define (next x) (+ x 1))
  (define (prime-n? x) (= (gcd x n) 1))
  (define (identity x) x)
  (filtered-accumulate prime-n? * 1 identity 1 next (- n 1)))

(provide sum-sq-prime)
(provide mult-pos-prime-n)
