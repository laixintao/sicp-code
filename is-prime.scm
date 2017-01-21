#lang scheme
(define (prime? b)
  (= b (smallest-divisor b)))

(define (smallest-divisor n)
  (find-divisor 2 n))

(define (find-divisor tester n)
  (cond ((> (square tester) n) n)
        ((devides? tester n) tester)
        (else (find-divisor (+ 1 tester) n))))

(define (square b)
  (* b b))

(define (devides? n d)
  (= (remainder d n) 0))

(prime? 3)
(prime? 5)
(prime? 19)
(prime? 21)
(prime? 29)
