#lang racket

; Higher order function that calculates hamming distance of 2.
; Validates passed in parameters.
(define (hamming-distance l m)
  (if (null? l)
      0
      ; Call recursive function to count similarity.
      (count-h-d l m 0)))

; Recursive function to count similarity of 2 lists. Also receives counter
; as an argument and return it when recursion is terminated.
(define (count-h-d l m c)
  (if (null? l) ; If list is null, terminate recursion.
                ; It is enough to check first list for null 
      c ; return counter
      (if(= (car l)(car m)) ; Check if first elements of passed in lists are equal.
         ; If equal, do recursion with the rest of two lists and increment counter by 1.
         (count-h-d (cdr l)(cdr m)(+ c 1))
         ; If not equal, do recursion with the rest of two lists and current counter.
         (count-h-d (cdr l)(cdr m)c))))

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))