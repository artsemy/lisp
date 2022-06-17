#lang racket
(define (compose f g)
  (lambda (i) (f (g i))))

(define (inc x) (+ x 1))
(define (square x) (* x x))

((compose square inc) 6)