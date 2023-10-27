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
 L4 min: 13 left
|#