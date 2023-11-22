#lang racket
(define (quadrat x)(* x x ))
(define (quadratsumme x y )(+ (quadrat x)(quadrat y)))
(define (f a ) (quadratsumme (+ a 1) (* a 2)))

(define (betrag x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (betrag1 x)
  (cond ((< x 0) (- x))
        (else x)))
(define (betrag2 x)
  (cond ((< x 0) (- x))
        (else x)))

#|(betrag2 -5)|#

(define (istGrosse x y)
  (cond ((> x y) x )
        (else y)))
#|(istGrosse 31 45)|#

(define (zwischen-5-und-10? x)
  (and (> x 5 ) (< x 10)))

(define (>= x y )
  (or (> x y ) (= x y)))
#|es könnte auch sein (not (> x y))|#