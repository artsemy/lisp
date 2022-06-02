#lang racket
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b) result
        (iter (next a) (combiner a result))))
  (iter a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (accumulate-v2 combiner null-value term a next b)
  (if (> a b) null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum-v2 term a next b)
  (accumulate-v2 + 0 term a next b))

(define (product-v2 term a next b)
  (accumulate-v2 * 1 term a next b))

(define (identity x) x)
(define (next x) (+ x 1))

(sum identity 1 next 10)
(sum-v2 identity 1 next 10)
(product identity 1 next 5)
(product-v2 identity 1 next 5)