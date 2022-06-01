#lang racket
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (cube x) (* x x x))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2)) add-dx b)
     dx))
;----------------------------------------------------------------
(define (better-sum term a next b k next-k)
  (if (> a b)
      0
      (+ (* k (term a)) (better-sum term (next a) next b (next-k k) next-k))))

(define (simp-int f a b n)
  (define (next-k k) (if (= k 2) 4 2))
  (define (next-a a) (+ a h))
  (define h (/ (- b a) n))
  (* (/ h 3)
     (+ (f a)
        (better-sum f (+ a h) next-a (- b h) 4 next-k)
        (f b))))
  

(integral cube 0 1 0.01)
(integral cube 0 1 0.001)
(simp-int cube 0 1.0 100)
(simp-int cube 0 1.0 1000)
