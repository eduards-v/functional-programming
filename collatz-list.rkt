#lang racket

(define (collatz-list x)
  (odd? x)
  )

(define (odd? x)
  (if (= (modulo x 2) 0)
      #f
      #t))

(collatz-list 4)
(collatz-list 5)