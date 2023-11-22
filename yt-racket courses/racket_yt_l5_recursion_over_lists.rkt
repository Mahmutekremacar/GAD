#lang racket
(define x '(42 -1 3 1 7))

(define (only-positives l)
  (if (empty? l)
      ;; handle the base case
      '()
      ;; otherwise, it's a cons cell
      (if (<= (car l) 0)
          ;;eclude it
          (only-positives (cdr l))
          ;; iclude it
          (cons (car l) (only-positives (cdr l))))))

(only-positives x)