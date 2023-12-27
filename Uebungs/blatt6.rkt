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


(display "Aufgabe 2")
(newline)
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
(newline)
(display "Aufgabe 3")

(define (konst-addierer n )
  (lambda (x) (+ x n)))

(newline)
(define plus1 (konst-addierer 1))
  (plus1 98)
(define plus10 (konst-addierer 10))
(plus10 98)





#;(define plus1 (konst-addierer 1)
  (plus1 98)) 
#;(newline)
#;(display "TEST")
#;(define test
  (lambda (x)
  (lambda (y)
    (+ x y))))
#;(newline)
#;(define add27
  (test 27))

#;(add27 2)

#;(define ( test2 x)
  (lambda (y)
    (if (>= y 10) (+ x y) (- x 10))))
#;(newline)
#;(define add10
  (test2 10))
#;(add10 200)

(display "Aufgabe 4")

(define (konst-ggt b)
  (define (ggt a b )
  (if (= b 0)
      a
      (ggt b (remainder a b)))
  )
  
  (lambda (a) (ggt a b))
  )
(newline)

(define ggt10 (konst-ggt 10))
(define ggt987 (konst-ggt 987))

(ggt10 25)
(ggt10 27)

(ggt987 762351)
(ggt987 98123746)

(newline)
(display "Aufgabe5")

#;(define (paar-operation op))

(define (paar-operation op)
  (lambda (x) (op (car x) (cdr x)))
  )

(newline)
(define paar=? (paar-operation =))
(paar=? (cons 2 3)) 
(paar=? (cons 3 3))

(define paar<? (paar-operation <))
(paar<? (cons 2 3)) 
(paar<? (cons 3 3))

(define paar+ (paar-operation +))
(paar+ (cons 2 3)) 
(paar+ (cons 3 3))

(newline)
(display "Aufgabe 6")
(newline)
; https://docs.racket-lang.org/sdraw/
(require sdraw)
(sdraw (list 1 2))
(sdraw (list 1 2) #:null-style '/)

(newline)
(display "Struktur1")
(define struktur1 (cons (cons 24 (cons 1 2)) (cons 20 (cons 1 1))))
(sdraw struktur1 #:null-style '/ )

(display "Struktur2")
(define struktur2 (cons ( cons 7 (cons 2 (cons 3 (cons 1 null)))) null))
(sdraw struktur2 #:null-style '/ )

(display "Struktur 3")
(define struktur3 (cons (cons 3 (cons 3 null)) (cons 3 (cons 3 (cons 3 3)))))
(sdraw struktur3 #:null-style '/)

(display "Struktur 4")
(define struktur4 (cons (cons 10 (cons 7 (cons 8 (cons 9 (cons 3 null))))) (cons (cons null (cons 6 (cons 1 (cons 0 (cons 2 4)))))(cons 3 3))))
(sdraw struktur4 #:null-style'/)



;;















