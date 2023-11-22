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

(define (f1 a b c)
 (and a b c))

(define (f2 a b c)
 (and a (or b c)))

(define (f3 a b c)
 (or a (not (and b c))))


(define (gut-genug? schaetzwert x)
(< (abs (- (quadrat schaetzwert) x)) 0.0000001))

(define (mittelwert x y)
(/ (+ x y) 2))

(define (verbessern schaetzwert x)
(mittelwert schaetzwert (/ x schaetzwert)))

(define (wurzel-iter schaetzwert x)
(if (gut-genug? schaetzwert x)
schaetzwert
(wurzel-iter (verbessern schaetzwert x) x)))

(define (wurzel x)
(wurzel-iter 31.0 x))

(wurzel 3 )