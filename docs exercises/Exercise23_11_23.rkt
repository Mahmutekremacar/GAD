#lang racket

#;(let ([x 5]) x)

#;(let ([x 5])(let ([x 2][y x])(list y x)))


#;(let fac ([n 10])
    (if (zero? n)
        1
        (* n (fac (- n 1)))))

#;(define (foo a b )

 (if (< a 0) a (let ([a b ]) (+ a b)  )))  

#;(foo 5 6)

(define (caesar-encrypt n k)
(define (encrypt-digit d k)
  (if (= d 0)
      0
      (let ((schifted-digit (+ (modulo d 10) k))) (+ (modulo schifted-digit 10) (* 10 (encrypt-digit (quotient d 10) k))))))
(encrypt-digit n k))
#;(caesar-encrypt 7901 2)

(define (basamak-bulucu a basamak)
  (if (= a 0) basamak
      (basamak-bulucu (quotient a 10) (add1 basamak))))

(basamak-bulucu 12345 0)