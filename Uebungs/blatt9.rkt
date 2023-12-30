#lang racket
(display "Aufgabe 1")
(newline)
#|VAY AMK BU NE|#
(newline)
(display "Aufgabe 2")
(newline)
#|

|#

(define (liste-teilen eingabe)
  (define (iter eingabe even odd)
    (if (empty? eingabe ) (list even odd)
    (if (even? (car eingabe)) (iter (cdr eingabe) (cons (car eingabe) even) odd)
        (iter (cdr eingabe) even (cons (car eingabe) odd)))))
  
  (iter eingabe '() '()))
(liste-teilen '(1 2 3 4 5 6 7 8 9))


(newline)
(display "Aufgabe 3")
(newline)

(newline)
(display "Aufgabe 4")
(newline)

(newline)
