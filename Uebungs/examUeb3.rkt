#lang racket

(println "Aufgabe 1")

(define (sinus-approx x)
  (if (<= x 0.1) x
      (- (* 3.0 ( sinus-approx (/ x 3.0))) (* 4.0 (expt (sinus-approx (/ x 3.0)) 3)))))
(sinus-approx 750)

(sinus-approx 30)
(newline)
;;
(println "Aufgabe 2")

(define (count-perm x)
  (define (perm-iter x ans)
    (cond
      [(<= x 0 ) ans ]
      [else (perm-iter (- x 1) (* ans x))]))
  (perm-iter x 1))

(count-perm 2) 
(count-perm 3) 
(count-perm 5)
(newline)
;;
(println "Aufgabe 3")c

(define (isbn-test x)
  (define (isbn-iter x digits ans)
    (cond
      [(> x 0) (isbn-iter (quotient x 10) (- digits 1) (+ ans (* digits (remainder x 10))))]
      [else ans]
      ))
  (if (= 10 (remainder (isbn-iter x 9 0) 11)) (println "X")
      (remainder (isbn-iter x 9 0) 11)))
(isbn-test 344615497) 
(isbn-test 026201153)
(isbn-test 392511825)
(newline)
;;
(println "Aufgabe 4")

(define (zylinder-kegel radius-zylinder hoehe-zylinder
radius-kegel hoehe-kegel)
  (define pi 3.1415926535897932384626433832795)
  (/ (* pi (expt radius-zylinder 2) hoehe-zylinder) (/ (* pi (expt radius-kegel 2 ) hoehe-kegel) 3)))

(zylinder-kegel 3 5 3 5)
(newline)







