#lang racket
(define (p-triangle i j)
  (define (rec i j)
    (cond ((or (< i 0) (> j i) (< j 0)) 0)
          ((or (= j 0) (= i j)) 1)
          (else (+ (rec (- i 1) j)
                   (rec (- i 1) (- j 1))))))
  (rec i j))

(provide p-triangle)