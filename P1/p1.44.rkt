#lang racket
(define (compose f g)
  (lambda (i) (f (g i))))

(define (repeated f n)
  (lambda (i)
    (if (= n 1)
        (f i)
        ((compose f (repeated f (- n 1))) i))
    ))
;-------------------------------------------------
(define dx 0.0001)

(define (smooth f)
  (lambda (i)
    (/ (+ (f (- i dx)) (f i) (f (+ i dx)))
       3)))

(define (square x) (* x x))

(define (n-fold-smooth f n)
  ((repeated smooth n) f))

((n-fold-smooth square 4) 5)