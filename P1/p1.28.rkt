#lang racket
;561 1105 1729 2465 2821 6601
(define (expmod base exp m)
  (define (trivial base m)
    (if (and (not (or (= base 1)
                      (= base (- m 1))))
             (= (remainder (square base) m) 1))
        0
        (remainder (square base) m)))
  (cond ((= exp 0) 1)
        ((even? exp)
         (trivial (expmod base (/ exp 2) m)
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (square x) (* x x))

(define (miller-test n)
  (define (try-it a) (= (expmod a (- n 1) n) 1))
  (define (loop a)
    (cond
      ((= a 0) true)
      ((and (> a 0) (try-it a)) (try-it (- a 1)))
      (else false)))
  (loop (- n 1)))

(provide miller-test)