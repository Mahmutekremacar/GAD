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

(define lst '( 1 2 3 4 5))

(define (parser x )(car x) + (is-five (cdr x)))

(define (is-five x) (if (= (car x) 5)
                        #t
                    (parser x) ))
(define a-to-be '("a" "b" "c"))

#|
List continued

Using empty?, car, cdr, we can write many utilities
  All definable ourselves, also in Racket by default
  (length l)    -- Length of l
  (list-ref l i)-- Get the ith element of list(0-indexed)
  (append l0 l1)-- Append l1 to the end of the l0
  (reverse l)   -- Reverse the list
  (member x l)  -- Check if x is in l

> (length lst)
5
>(list-ref lst 0)
1
> (append lst '(6 7 8))
'(1 2 3 4 5 6 7 8)
> (reverse lst)
'(5 4 3 2 1)
> (member 5 lst)
'(5)
> (member 0 lst)
#f
|#

#|
Using cond, write a function that takes a list l and an index x and returns...

  The first element if x= 0
  The second element if x=1
  ...
  Otherwise unknown
|#
(define (foo x y)
  (cond [(= y 0)(list-ref x y)]
        [(= y 1)(list-ref x y)]
        [(= y 2)(list-ref x y)]
        [else (println "Unknown")]))

#;(foo '(1 2 3 4) 0)
#;(foo '(1 2 3 4) 1)
#;(foo '(1 2 3 4) 2)
#;(foo '(1 2 3 4) 3)
 
(define (index-returner x y )
  (if (member y x) (list-ref x y) (println "Unknown")))

#;(index-returner '(1 2 3 4) 3)

  











