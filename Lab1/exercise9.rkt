#lang racket

(require test-engine/racket-tests)

;; ===============
;; Tests
(check-expect (stubby "sunny") "shorty")
(check-expect (stubby "Hi") "stubby")
(check-expect (stubby "Summer time summer time sadness") "too wordy")

#;(define (stubby string) "stubby") ; stub

;; ===============
;; String -> String
;; consume string if shorter than 3 characters
;; return "stubby", if more than 25 return "too wordy"
;; else return "shorty"
(define (stubby string)
  (cond [(< (string-length string) 3) "stubby"]
        [(> (string-length string) 25) "too wordy"]
        [else "shorty"]))

(test)

