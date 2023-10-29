#lang racket
(define (squared-max x y z) (if (> (* x x) (* y y)) 
                                (if (> (* x x) (* z z))  (* x x) (* z z))
                                (if (> (* y y) (* z z)) (* y y) (* z z))))



#;(define (zahl-umdrehen x)

 (define (add-d x digits)
   (+ digits 1) + (how-many-digits (quotient x 10) digits))

(define (how-many-digits x digits)
  (if (> x 10) (add-d x digits) (+ digits 0)))
  
(define (um-iter x y digits)
  (if (> (quotient x 10 ) 0)
      (um-iter (quotient x 10) (+ (* (remainder x 10) (expt 10 digits)) y) (- digits 1)) 
      (+ (* (remainder x 10) (expt 10 digits)) y)  )) 
  (um-iter x 0 (how-many-digits x 0)))

#;(zahl-umdrehen 446)


(define (zahl-umdrehen x)
  (define digits 0)
  
  #;(define (foo x)
    (if (> x 10)
        (digit-adder (+ digits 1) x)
        (+ digits 1)))
  
  #;(define (digit-adder digits x)
    (+ digits 1) + (foo (quotient x 10)))
  (define (degit_loop  x  y )( if(> (/ x  y ) 1 ) y (degit_loop x (/ y 10) )  ))
  
  (define (um-iter x x-not digits)
    (if (< digits 0)
        x-not
        (um-iter (quotient x 10) (* (+ (remainder x 10)) digits) (- digits 1))))
  
   (um-iter x 0 (degit_loop x 100000000000000000000000000) ))

(zahl-umdrehen 1234)