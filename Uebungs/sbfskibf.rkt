#lang racket
(define (wie-lang v laenge)
    (cond
      [(empty? (cdr v)) (+ 1 laenge)]
      [else (wie-lang (cdr v) (+ laenge 1))]))

(wie-lang (vector->list #(1 2 3)) 0)
(define a (vector->list #( 1 2 3)))
(define b #(1 2 3 4 5 6))
(vector-take-right b (- (vector-length b) 1))
(println "````````````")
(vector-drop b 3)
(vector-drop b 2)
(vector-length b)
(vector-ref b 0)