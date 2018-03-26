#lang racket


(define (decide-prime x)
  (decide-prime-helper x (- x 1)))


(define (decide-prime-helper x y)
  (if (= y 1)
      #t
      (if (= 0 (modulo x y))
          #f
          (decide-prime-helper x (- y 1)))))


(decide-prime 13)
(decide-prime 23)
(decide-prime 24)