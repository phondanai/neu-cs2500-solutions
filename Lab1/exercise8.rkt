#lang racket

(require test-engine/racket-tests)

;; ===============
;; Tests
(check-expect (good-weather? "sunny") #t)
(check-expect (good-weather? "blizzard") #f)
(check-expect (good-weather? "snow") #t)
(check-expect (good-weather? "rain") #f)

#;(define (good-weather? weather) #t) ; stub

;; ===============
;; String -> Boolean
;; consume string weather condition
;; and return true if weather is good
(define (good-weather? weather)
  (cond [(or
          (equal? weather "sunny")
          (equal? weather "snow"))]
        [else #f]))

(test)

