#lang racket

(define (hamming-distance l m)
  (if (null? l)
      0
      (count-h-d l m 0)))

(define (count-h-d l m c)
  (if (null? l)
      c
      (if(= (car l)(car m))
         (count-h-d (cdr l)(cdr m)(+ c 1))
         (count-h-d (cdr l)(cdr m)c))))

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))