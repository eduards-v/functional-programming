#lang racket

(define (collatz-list x)
  (if (= x 1)
      (cons x null)
      (if (odd? x)
          (cons x (collatz-list(+ (* x 3) 1)))
          (cons x (collatz-list(/ x 2))))))

(define (odd? x)
  (if (= (modulo x 2) 0)
      #f
      #t))

(collatz-list 5)
(collatz-list 9)
(collatz-list 2)
