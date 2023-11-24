#lang racket
#|Local refers to the scope of the function|#

(define big-list (list 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 1 2 3 4 5 9864 ))

(define (sum x y )
  (local
    [(define ans (+ x y))
     (define a 3)] ans))

(sum 2 3)

(define (max-val lon)
  (cond
    [(empty? (rest lon)) (first lon)]
    ;;[else (max (first lon) (max-val (rest lon)))]
    [(> (first lon) (max-val (rest lon)))
     (first lon)]
    [else (max-val (rest lon))]
    ))

;(max-val (list 9 2 3 5 12)) 
#|
  if we have a very long list above
  fuction is very time consuming.
  We can improve it with locals:
|#

(define (max-val2 lon)
  (cond
    [(empty? (rest lon)) (first lon)]
    [else (max (first lon) (max-val (rest lon)))]
    ))

(define (max-val3 lon)
  (local
    [(define max-rest (cond [(empty? (rest lon)) (rest lon)]
                            [else(max-val3 (rest lon))] ))]
    (cond
      [(empty? (rest lon)) (first lon)]
      [(> (first lon) max-rest)
       (first lon)]
      [else max-rest])
    ))

  