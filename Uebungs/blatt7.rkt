#lang racket
(println "Aufgabe 1")
#|
passed list with pred (even?)
if the list's new elemet is odd
stop the process and give output|#

(define (loesche liste praedikat )
  (cond
    [(praedikat (car liste) ) (loesche (cdr liste ) praedikat)]
    [else liste]))
(loesche (list 4 6 8 3 2 4 5) even?)

(newline )
;;erl

(println "Aufgabe 2")
#|
accept a list as param
reverse the elements of the list
output the list as reversed
|#
(define (drehe liste )
  (define (iter liste umdreht-liste)
    (cond
      [(empty? liste) umdreht-liste]
      [else (iter (cdr liste) (cons (car liste) umdreht-liste))]))  
  (iter liste '()))
(drehe (list 1 2 3))
(drehe (list 1 2 (list 3)))
(drehe (list 1 (list 5 6) 2 (list 3 4)))
(newline)
;;erl

(println "Aufgabe 3")
(define (typ-or typ1 typ2 )
  (lambda (x)
    (or (typ1 x) (typ2 x)))) 

(define paar-oder-liste? (typ-or pair? list?))
(define integer-oder-boolean? (typ-or integer? boolean?))
(integer-oder-boolean? (paar-oder-liste? (cons 1 2))) 
(newline)
;;erl

(println "Aufgabe 4")

(define (operation operatoren n)
  (lambda (operands)
    ((list-ref operatoren (- n 1)) (car operands) (cadr operands))))

(define plus (operation (list + - * /) 1))
(plus (list 1 2))
(define minus (operation (list + - * /) 2))
(minus (list 1 2)) 
(newline)
;;erl


