#lang racket

(require test-engine/racket-tests)

;; ===============
;; Tests
(check-expect (how-long 5) "great!")
(check-expect (how-long 60) "okay")
(check-expect (how-long 61) "not good")

#;(define (how-long mins) "great!") ; stub

;; ===============
;; Number -> String
;; consume how long in minutes and turn to string
;; which tell that the time is good or bad for waiting
(define (how-long mins)
  (cond [(<= mins 10) "great!"]
        [(<= mins 60) "okay"]
        [(> mins 60) "not good"]))

(test)

