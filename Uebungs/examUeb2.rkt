#lang racket

(println "Aufgabe 1")

#|

1. I need to loop the odd numbers till the quadrat and sum them.

|#
(define (nat-wuerzel x)
  (define (nat-iter x odd-number)
    (cond
      [(< odd-number (expt x 2)) (nat-iter x (+ odd-number 2))]
      [else odd-number]))
  (nat-iter x 1))

(nat-wuerzel 5)
(nat-wuerzel 11)
(newline)
;;
(println "Aufgabe 2")

(define (zahl-umdrehen x)
  #|
  1. determine digits
  2. multiply number w digits
  3.
  |#
  (define (dig x digits )
    (cond
      [(> x 10) (dig (quotient x 10) (+ digits 1))]
      [else digits]))
  (define (umdrehen-iter x neu-x digits neu-digits)
    (cond
      [(< neu-digits digits) (umdrehen-iter (quotient x 10) (* (remainder x 10)(expt 10 neu-digits )) digits (+ neu-digits 1) )]
      [else neu-x]))
  (umdrehen-iter x 0 (dig x 1) 0))
(define (dig x digits )
    (cond
      [(> x 10) (dig (quotient x 10) (+ digits 1))]
      [else digits]))
  
(zahl-umdrehen 123)
(newline)
;;nicht erl

(println "Aufgabe 3")
        
(define (aufsteigendes-produkt? a b c d)
  (if (> b a)
      (if (> c b)
          (if (> d c) #t
              #f )
          #f)
      #f))

(aufsteigendes-produkt? 1 2 3 6)
(aufsteigendes-produkt? 2 1 3 6)
(aufsteigendes-produkt? 2 3 5 11)
(newline)

(println "Aufgabe 4")

(define (f1 a b)
  (and (not (or a b)) (or a b) a (not b)))

(f1 #t #f)

(define (f2 a b c)
  (or a (and a b (not c)) (and (not a) c) (and (not (and a b)) c)))
(f2 #t #t #t)

(define (f3 a b c d)
  (and (xor (not a) b) ( not (or a (not b) c)) (not (and d c b a)) ))

(f3 #t #t #t #t)
(newline)