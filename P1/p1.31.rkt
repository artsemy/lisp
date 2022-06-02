#lang racket
(define (product term a next b)
  (cond
    ((> a b) 1)
    (else (* (term a) (product term (next a) next b)))))

(define (product-v2 term a next b)
  (define (iter a result)
    (if (> a b) result (iter (next a) (* result (term a)))))
  (iter a 1))

(define (factorial n)
  (define (identity x) x)
  (define (next x) (+ x 1))
  (product identity 1 next n))

(define (factorial-v2 n)
  (define (identity x) x)
  (define (next x) (+ x 1))
  (product-v2 identity 1 next n))

(define (wallis-pi n)
  (define (four-sq n) (* 4.0 n n))
  (define (term n) (/ (four-sq n) (- (four-sq n) 1)))
  (define (next x) (+ x 1))
  (* 2 (product term 1 next n)))

(define (wallis-pi-v2 n)
  (define (four-sq n) (* 4.0 n n))
  (define (term n) (/ (four-sq n) (- (four-sq n) 1)))
  (define (next x) (+ x 1))
  (* 2 (product-v2 term 1 next n)))

(factorial 5)
(factorial-v2 5)
(wallis-pi 10000)
(wallis-pi-v2 10000)
