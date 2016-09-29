#lang racket

(require test-engine/racket-tests)

;; ===============
;; Tests

(check-expect (letter-grade 0) "F")
(check-expect (letter-grade 50) "C")
(check-expect (letter-grade 43) "D")
(check-expect (letter-grade 100) "A")
(check-expect (letter-grade 80) "B")

#;(define (letter-grade 100) "A") ; stub

;; ===============
;; Number -> String
;; consume score and determine
;; what grade student will have
(define (letter-grade num-score)
    (cond [(<= num-score 39) "F"]
          [(<= num-score 49) "D"]
          [(<= num-score 69) "C"]
          [(<= num-score 80) "B"]
          [(> num-score 80) "A"]))

(test)

