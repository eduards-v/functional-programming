#lang racket

; Take the ith element of m from the ith
; element of l and square the result for all i.
; Then add all of those to get d.

(define (lstq l m)
  (if (null? l)
      0
      (lstq-helper l m 0)))

; To solve this problem I defined a helper function that takes
; an extra parameter sum that is recursevly incremented and return
; when list is empty.
(define (lstq-helper l m sum)
  (if (null? l)
      sum
      (+ sum (lstq-helper (cdr l)(cdr m)(sqr (- (car l)(car m)))))))

; Wrapping squaring to improve readability of the function above.
(define (sqr x)
  (* x x))


(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))



