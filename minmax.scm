;*************************************
;FILE NAME: minmax.scm
;PURPOSE: Program-1 for CS-524 Programming Languages-01.
;AUTHOR: Vani Krishna Raghu Vamsha Kokkula (vk0018).
;DATE: APRIL 24 2017
;BRIEF DESCRIPTION: This program is to write a program that finds the minimum and maximum of a list of numbers, and returns the min and max in a list.
;This Program is entirely my own work.
;*************************************
#lang racket
(define (min a b) (cond [(< a b) a] [else b])) 
(define (max a b) (cond [(> a b) a] [else b]))  

(define (minmax a)
  (let loop [(x +inf.0) (y -inf.0) (a a)]
    (if (null? a)
        (list x y)
        (loop (min (car a) x) (max (car a) y) (cdr a)))))
