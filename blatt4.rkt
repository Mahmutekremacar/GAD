#lang racket


;; Aufgabe 1

(define (ganzzahlige-wurzel? n)
  (if (integer? (sqrt n)) #t #f))
(ganzzahlige-wurzel? 25)
(ganzzahlige-wurzel? 24)



;; Aufgabe 2

(define (fakt n)
  (define a (sqrt n))
  (define b2 (- (* a a) n))
  (define (fakt-iter n a b2) 
    (if (integer? (sqrt b2)) (- a (sqrt b2)) (fakt-iter n (+ (sqrt n) 1) (- (* (+ a 1) (+ a 1)) n)) ))
  (fakt-iter n a b2)
  ) 
;nicht erl

;; Aufgabe 5
(define (caesar_encrypt n k)
  (define lst '(1 2 3 4 5 6 7 8 9 ))
  ())



