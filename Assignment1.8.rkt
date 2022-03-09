;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment1.8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (cube-root-iter guess x)
  (if (good-enough-cube? guess x) guess
      (cube-root-iter (impove-cube guess x) x)))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (impove-cube guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.001))


(define (cuberoot x)
  (cube-root-iter 1.0 x))


(cuberoot 125)
