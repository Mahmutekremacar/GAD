#lang racket
#|Recursion types:|#









;;Idea of a recursion:
;;Pure structural recursion:

#;(define (sum lon)
  ;;sum:(List of Num)-> Num
  (cond
    [ (empty? lon) 0]
    [else (+ (first lon) (sum (rest lon)))]))





;;Acumulative recursion:

(define (sum lon ans)
  (cond
    [(empty? lon) ans]
    [else (sum (rest lon) (+ ans (first lon)))]
    ))


(define a (list 1 2 3 4 5 6 7 8))

(newline)
(sum a 0)
(newline)

;;Generative recursion:

(define (gcd n m)
  (cond
    [(zero? n) m]
    [(zero? m) n]
    [else (gcd m (remainder n m))]))
(gcd 20220401 19181111)
#|
(gcd 20220401 19181111)
 (gcd 20220401 19181111)
 (gcd 19181111 1039290)
 (gcd 1039290 473891)
 (gcd 473891 91508)
 (gcd 91508 16351)
 (gcd 16351 9753)
 (gcd 9753 6598)
 (gcd 6598 3155)
 (gcd 3155 288)
 (gcd 288 275)
 (gcd 275 13)
 (gcd 13 2)
 (gcd 2 1)
 (gcd 1 0) -> 1
|#
