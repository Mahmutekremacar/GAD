#lang racket
(define (addone x)
  (if (< x 5) (+ x 1 ) x ))
(addone -5)

(require dyoo-while-loop)
 
(while (not (string=? (read-line)
                      "quit"))
  (printf "quit?  "))
 
(while #t
  (define input (read-line))
  (unless (regexp-match #px"please" input)
    (printf "You didn't say please\n")
    (continue))
  (when (regexp-match #px"quit" input)
    (break)))