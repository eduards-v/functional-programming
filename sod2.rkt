#lang racket

; Function that outputs a list where:
; value 1 is placed if 3 input lists contains
; odd number of 1s at the same index, otherwise value 0 is placed.

(define (sod2 x y z)
  (if (null? x)
      null
      (cons )))

;   0 0 0
;   0 0 1 -> return 1
;   0 1 0 -> return 1
;   1 0 0 -> return 1
;   0 1 1
;   1 0 1
;   1 1 0
;   1 1 1 -> return 1

(define (odd? x y z))
