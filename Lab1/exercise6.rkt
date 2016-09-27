#lang racket

(define (letter-grade num-score)
    (cond [(<= 0 num-score 39) "F"]
          [(<= 40 num-score 49) "D"]
          [(<= 50 num-score 69) "C"]
          [(<= 70 num-score 80) "B"]
          [(>= 80 num-score 100) "A"]))

(letter-grade 30)
