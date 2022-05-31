#lang racket
;561 1105 1729 2465 2821 6601
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (square x) (* x x))

(define (fermat-test n)
  (define (try-it a) (= (expmod a n n) a))
  (define (loop a)
    (cond
      ((= a 0) true)
      ((and (> a 0) (try-it a)) (try-it (- a 1)))
      (else false)))
  (loop (- n 1)))

(provide fermat-test)