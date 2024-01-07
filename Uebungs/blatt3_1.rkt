#lang racket
;;Aufgabe 1

#;(define (sin-approx x)
  (define (sonst x) (lambda (x) (- (* 3 (sin-approx (/ x 3))) (* 4 ( expt((sin-approx (/ x 3)) 3))))))
  (if (> x 0.1) (sonst x) x ))

(define (sinus-approx x )
  (if (<= x 0.1) 
      x
      (- (* 3.0 (sinus-approx (/ x 3.0))) (* 4.0 (expt (sinus-approx (/ x 3.0)) 3.0)))))
(println ",,,,")

(sinus-approx 750)
;;erll

;;Aufgabe 2

(define (count-perm x)
  (define (count-perm-iter x total)
    (if (> x 0) (count-perm-iter (- x 1) (* total x)) total))
  (count-perm-iter x 1))

(newline)
(count-perm 2)
(count-perm 3)
(count-perm 5)
(newline)
;erl

;;Aufgabe 3

(define (isbn-test isbn)
  (define (iter isbn digit total)
    (define (digitTimesAndDim digit total)
      (iter (quotient isbn 10) (- digit 1) (+ total (* (remainder isbn 10)digit))))
    (if (>= digit 0) (digitTimesAndDim digit total) total))
  (if (= (remainder (iter isbn 9 0) 11) 10 ) "X" (remainder (iter isbn 9 0) 11))) 

(println "---------")
(isbn-test 344615497)
(isbn-test 026201153) 
(isbn-test 392511825)
;erl

;;Aufgabe 4

(define (zylinder-kegel radius-zylinder hoehe-zylinder radius-kegel hoehe-kegel)
  (define pi  3.1415926535897932384626433832795 )
  (/(* pi (expt radius-zylinder 2) hoehe-zylinder )
    (/(* pi (expt radius-kegel 2) hoehe-kegel) 3)))
(println "---------")

(zylinder-kegel 3 5 3 5)
;erl

;;Aufgabe 5
;;
