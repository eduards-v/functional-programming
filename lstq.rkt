#lang racket

; Take the ith element of m from the ith
; element of l and square the result for all i.
; Then add all of those to get d.

(define (lstq l m)
  (if (null? l)
      null
      (+ (sqr (- (car l)(car m)))(lstq (cdr l)(cdr m)))))

(define (addon l)
  (if (null? l)
      ))

(define (sqr x)
  (* x x))


(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))



