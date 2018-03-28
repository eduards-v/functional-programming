#lang racket

; Higher order function to count zero values in the list
(define (hamming-weight l)
  (if (null? l)
      0 ; if passed list is null, return 0 count, else call recursive function count_zero
      (count_zero l 0)))

; Recursive function that counts zeros. Takes 2 parameters: list and counter
(define (count_zero l c)
  (if(null? l) ; termination check, stop recursion when list drains out
     c ; return counter 
     (if(= (car l) 0) ; check if first value of the list is 0
        ;if true, do recursion with the rest of the list and increment counter by 1
        (count_zero (cdr l)(+ c 1))
        ; if false, do recursion with the rest of the list, but don't increment counter
        (count_zero (cdr l)c))))


(hamming-weight (list 0 1 1 0 1 1 0 0 1 0)) ; output: 5