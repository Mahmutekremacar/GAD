#lang racket

#|(define (fakultaet x)
  (if (= x 1 )
      1
     (* x (fakultaet(- x 1)))
     )
  )  
(fakultaet 6)|#

(define (fakultaet n)
(fak-iter 1 1 n))
(define (fak-iter produkt zaehler n)
(if (> zaehler n)
produkt
(fak-iter (* zaehler produkt) (+ zaehler 1) n)))

(fakultaet 6)
;;