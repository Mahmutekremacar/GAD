#lang racket
;; Remember:
;; Expressions
;; Forms
;; Callsites

#|
FORMS
A form is a recognized syntax in the language
(if ...), (and...) are forms
But +, list refer to fuctions
Core forms defined by the language(if/and/define/...)
You can define new forms too! More on this later...
Scheme prefers to give a small number of general forms.
|#

;;(+ 2 3) ;; apply the + function to arguments

#|(if guar
    e-true
    e-false)|#
#|(if #f
    12
    "hello")|#
#|(if (equal? (+ 2 4 ) (+ 3  3))
    "yes"
    "no")|#

(define (f x y )
  x)
;;(f 5 4)

(define (loop ) (loop )) ;; das ist eine Schleife

;;(if #t 'hello (loop))

(define (if-f guard true false)
  (if guard true false))

(println "------------")
;;(if-f #t 'hello (loop))
;; Racket is Call-by-Value, and thus call never termniates


#|
VAlue and Expressions
Every language has a set of values
  Primitive objects representable at runtime
  Expressions evaluate to values
  Numbers, strings, but also functions(closures)
An expression is any form that evaluates to a value
  Very important term to know!!|#

(define (greater-than-0 x)
  (if (> x 0)
      (* 2 x)
      (* -2 x)))

(greater-than-0 5)


;;Collatz Conjecture
(define (even-or-odd x)
  (if (equal? (modulo x 2) 0)
      (/ x 2)
      (+ (* 3 x) 1)))

(even-or-odd 3)
(even-or-odd 6)

