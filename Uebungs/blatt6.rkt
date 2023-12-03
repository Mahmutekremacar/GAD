#lang racket
;; Aufgabe
#|
Schreiben Sie eine Prozedur zaehlen,
die eine beliebige ganze Zahl start,
eine beliebige ganze Zahl ende und eine
Zahl n > 0 als Parameter übergeben bekommt.
Als Ergebnis soll diese Prozedur die n-te Zahl aus diesem Bereich
von start bis ende (jeweils inklusiv und gezählt
ab start) liefern, die sowohl durch 3 als auch durch 7 teilbar ist.
Falls es keine n-te Zahl gibt, die diese Forderung
 erfüllt, soll das Resultat 0 sein.
|#

(define (zaehlen start ende n)
  (define (iter start ende n zahl)
    (cond
      [(> zahl ende ) 0]
      [(> n ende) 0]
      [(> (quotient ende (* zahl n ))) (* n zahl)]
      [else 0]
      ))
  (iter start ende n 21))

(zaehlen 10 100 1)

(zaehlen 10 100 2)
(zaehlen 10 100 3)
(zaehlen 10 100 1337)

;;erl


;;Aufgabe 2
#| (write a digit finder also)
Start by writing a function that changes the last digit
to first than write a scond func that controls if the changed num
bigger or equal the original one (if not ) add +10
|#


(define (gleiche-ziffern zahl)
  (define (wie-groesse zahl ans)
    (if (zero? zahl) ans
        (wie-groesse (quotient zahl 10) (+ 1 ans))))
  (define (control-digits zahl ans)
    (cond
      [(= (quotient zahl (expt 10 (- ans 1))) (remainder zahl 10)) zahl]
      [else (+(quotient zahl (expt 10 (- ans 1))) (- zahl (remainder zahl 10)))])) 

  
  (if (> zahl (control-digits zahl (wie-groesse zahl 0)) ) (+ (control-digits zahl (wie-groesse zahl 0)) 10)
      (control-digits zahl (wie-groesse zahl 0))))

(gleiche-ziffern 123)
(gleiche-ziffern 4567)
(gleiche-ziffern 120)

;;erl


(define (konst-addierer n )
  (lambda (x n) (+ x n)))

#;(define plus1 (konst-addierer 1)
  (plus1 98))


