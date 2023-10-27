#lang racket
#|
Definitions
The form define is used to define variables
Define comes in two forms
  (define id expr)-- Define variable id as expr
  (define (f a0 ...) body ...+)
    Define a function f with arguments a0...
    At least one body(typically only one)|#

;(define x 42 )

;(define ( foo x )
 ; x)

#|
The Environment
Theenvironment at some point in the program includes the
set of variables in scope (acccesible) at that point

Every syntatic point has a (potentially) unique environment|#

(define x 23 )
(+ x 1 ) ;; x is 23
(define z 24 )
(+ x z) ;; x & z is defined

#|
Environmetn Nest

Note that environments are hierarchical

Definitions inside a function do not escape the function

The relates to lexical scope which we will define soon
|#
(define y 5)
y ;5
(define (foo )
  ( displayln y) ;;5 
  (define y 4)
  y)          ;; 4
;(foo)          ;; 4
y              ;; 5
;(foo)



#|
LET
Definitions with define are not expressions
(let ([var e]) e-body)
  Expressions: evaluates e-body with var defined as e
  Can have more than one var
|#
(println "----")

(let ([ x 2])
  (+ x 3))  ;; 5

(let ([x 2]
      [y 3])
  (+ x y ))

(println "----")

#|
  Let does not allow simultaneous bindings to see each other
  I think of it as "parallel let"

(let ([x 2]
      [y x]) ;; bad
  (+ x y ))  ;; 5
|#


#|
Let*

Let* lets you define a sequence of variables
I think of it as "sequential let"
|#

(let* ([x 2]
       [y x]) ;; good
   (+ x y))   ;; 4

;; how to write the above using just let

(let ([x 2])
  (let ([y x])
  (+ x y)))
  
  