#lang racket
#|
Cond

Cond allows multiple guards to be checked
(cond [guard0 body 0]
      [guard1 body 1]
      ....
      [else body_else]) ;; optional
Checks each guard sequentially, evaluates first body
if first body fires the second if even would've fired will not
fire.
|#

#;(define (abs x)
  (cond [(> x 0) x]
        [(= x 0) 0]
        [(< x 0) (- x)]))
 
#;(define (foo x)
  (cond [(= x 42) 1]
        [(> x 0)  2]
        [else     3]))

#;(define (foo name )
  (println "hey")
  +
  (println "what's up")
  +
  (println name))

;; how to write cond only using if?
#;(define (abs x)
  (cond [(> x 0) x]
        [(= x 0) 0]
        [(< x 0) (- x)]))

(define (abs x)
  
  (if(> x 0)
     x
     (if (= x 0)
         0
         (- x))))

;  Empty list == '()

#|
Every list in racket is built out by "cons cells"

cons cell is a pair. It has a first element and the second element (cons 0 1)

Use "car" to get the element in the left side (car (cons 0 1)) == 0
Use "cdr" to get the element in the right side (cdr (cons 0 1)) == 1

|#

#|
Lists

Racket has lists-- sequences of cons cells ending w/'()
The empty lis( or "null") is special '()
Many ways to build them
  (list 1 2 3) ;; Variadic function
  '( 1 2 3)    ;; Datum represention

There are three operations on lists
  empty?/ null?
  first/car
  rest/cdr
|#

#;( define one-to-three (list 1 2 3))
; Above and below gives the same result
(define one-to-three '( 1 2 3))


(cdr (cdr one-to-three)) ;; 3
(null? one-to-three)     ;; #f
(car (cdr one-to-three)) ;; 2

(define one-to-five '( 1 2 3 4 5))
(define (parser x )(car x) + (is-five (cdr x)))

(define (is-five x) (if (= (car x) 5)
                        #t
                    (parser x) ))















