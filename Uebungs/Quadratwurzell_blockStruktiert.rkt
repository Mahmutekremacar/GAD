#lang racket
(define (mittelwert x y)
(/ (+ x y) 2))

(define (quadrat x)(* x x ))

(define (wurzel x)
(define (wurzel-iter schaetzwert x)
(if (gut-genug? schaetzwert x)
schaetzwert
(wurzel-iter (verbessern schaetzwert x) x)))
(define (verbessern schaetzwert x)
(mittelwert schaetzwert (/ x schaetzwert)))
(define (gut-genug? schaetzwert x)
(< (abs (- (quadrat schaetzwert) x)) 0.00001))
(wurzel-iter 1.0 x))