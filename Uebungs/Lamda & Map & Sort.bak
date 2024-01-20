#lang racket
;;Lambda expression
;; Anonymous dunctions:
;; filter, map, foldr, foldl
;; build-list

(define numsX '(1 2 3 4 5 6 7 8 9))
(define numsY '( 5 4 3 2 1 5 4 3 2 ))

(define (plus numsX numsY)
  (map (lambda (x y) (+ x y)) numsX numsY))

(plus numsX numsY)


(define (onlyevens numsX numsY)
  (filter (lambda (x) (zero? (remainder x 2)))
          (map (lambda (x y ) (+ x y )) numsX numsY)))

(onlyevens numsX numsY)

(define (evens lstx)
  (filter (lambda (x) (zero? (remainder x 2)))
          (map (lambda (x) (* x x)) lstx))) 

(evens numsX) 