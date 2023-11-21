#lang racket

;; Aufgabe 1
(define (ganzzahlige-wuerzel? n )
  (if (integer? (sqrt n)) #t #f))

;;erledigt

;; Aufgabe 2

(define (fakt n)
  (define a (sqrt n) )
  (define (b) (sqrt (- (* a a) n)))
  (define (foo a) (- (* a a) n))
  
  (if (integer? b)
      (println "Fehler")
      (if (integer? (sqrt (foo (+ a 1))))
          (- a (sqrt (* b b)))
          (fakt n ) )))

;; Aufgabe 4
(define (kubiksumme x)
(define (summer x sum )
  (define (cuber x) (* x x x))
  (define (foo x sum )
    (if (= (remainder x 10) 0)
        (summer (quotient x 10) sum)
     (summer (quotient x 10) (+ sum (remainder x 10)))))

  (if (> x 10) (foo x sum) (if (= x 10) (cuber (+ sum 1)) (cuber (+ x sum))) ))
  (summer x 0))

;(kubiksumme 101402)
;(kubiksumme 34567)

;;erledigt

;; Aufgabe 5

#;(define (digits n . args)
  (let ((b (if (null? args) 10 (car args))))
    (let loop ((n n) (d '()))
      (if (zero? n) d
          (loop (quotient n b)
                (cons (modulo n b) d))))))

#;(digits 12345)
#;(int->list 12345)
#;(define (int->list n) (if (zero? n) `()
                          (append (int->list (quotient n 10)) (list (remainder n 10)))))

(define (caesar_encrypt n k)
  (define (int->list n) (if (zero? n) `()
                          (append (int->list (quotient n 10)) (list (remainder n 10)))))
  (define (kopie-n-for-k n k) (if (zero? n ) '()
                                  (append (kopie-n-for-k(quotient n 10 )k) (list k))))  
  #;(define k-list (kopie-n-for-k n k))
  #;(define n-list (int->list n)) 
   (define (encp n-list k-list) (map (lambda (x y) (+ x y)) n-list k-list))  
  (encp  (int->list n) (kopie-n-for-k n k) ))

(newline)
(println "---=")
(caesar_encrypt 1234 1)
(println "---=")
(newline)

 
(define (int->list n ) (if (zero? n) '()
                           (append (int->list (quotient n 10)) (list (remainder n 10)))))

  #;(define (list-> int (int->list n) neuN ) (if ()))
  

(map (lambda (number number2)(+ number  number2))'(1 2 3 4) '(2 3 4 5))
(newline)

#;(define (caesar_encrypt n k)
  (define (caesar_encrypt-iter n k new-num mal)
  (if (> (quotient n 10) 0 )
      (caesar_encrypt-iter (quotient n 10) k (*(* mal 10) (+ (remainder n 10) k))  (+ mal 1))
      (+ (*(* mal 10) n) (+ new-num k))))
  (caesar_encrypt-iter n k 0 1)) 


#;(caesar_encrypt 322 1)

 


(map (lambda (number1 number2) (+ number1 number2))'(1 2 3 4)'(10 100 1000 10000))

(define  (ex-lamb-map x y) (map (lambda (x y) (+ x y)) x y))
(ex-lamb-map '(1 2 3 4) '(10 100 1000 10000))