#lang racket
(define (make-rekt a b) (cons a b))
(define (width-rekt r) (car r))
(define (length-rekt r) (cdr r))

(define (make-segment a b) (cons a b))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
;--------------------------------------------------
(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
;---------------------------------------------------
(define (length-segment s)
  (sqrt (+ (square (- (x-point (start-segment s))
                     (x-point (end-segment s))))
           (square (- (y-point (start-segment s))
                     (y-point (end-segment s)))))))
;---------------------------------------------------
(define (area-rekt r)
  (* (length-segment (width-rekt r))
     (length-segment (length-rekt r))))

(define (perim-rekt r)
  (+ (* (length-segment (width-rekt r)) 2)
     (* (length-segment (length-rekt r)) 2)))

(define rekt (make-rekt (make-segment (make-point 2 (- 1)) (make-point 5 (- 5)))
                        (make-segment (make-point 5 (- 5)) (make-point 9 (- 2)))))

(area-rekt rekt)
(perim-rekt rekt)