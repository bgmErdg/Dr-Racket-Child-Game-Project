;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname raket2) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define m1 (bitmap "./menu.jpeg")) 
(define story1 (bitmap "./story1.jpeg"))
(define num1 (bitmap "./num1.jpeg"))
(define num2 (bitmap "./num2.jpeg"))
(define num3 (bitmap "./num3.jpeg"))
(define num4 (bitmap "./num4.jpeg"))
(define-struct sceneChH (currentScene))

(define (sceneChanger c) (cond
                  
                          ((string=? (sceneChH-currentScene c) "story1")
                           (
                            (place-image story1 500 500 (empty-scene 1000 1000)))
                          ((string=? (sceneChH-currentScene c) "num1")
                           (place-image num1 500 500 (empty-scene 1000 1000)))
                          ((string=? (sceneChH-currentScene c) "num2")
                           (place-image num2 500 500 (empty-scene 1000 1000)))
                          ((string=? (sceneChH-currentScene c) "num3")
                           (place-image num3 500 500 (empty-scene 1000 1000)))
                          ((string=? (sceneChH-currentScene c) "num4")
                           num4)))
                          
(define (click c x y me)
  (cond
    ((and (string=? (sceneChH-currentScene c) "story1") (and (mouse=? me "button-down")
                                                         (and (> x 800) (< x 1000))
                                                         (and (> y 200) (< y 1000)))) (make-sceneChH "num1"));1236,958,1502,804
    ((and (string=? (sceneChH-currentScene c) "num1") (and (mouse=? me "button-down")
                                                         (and (> x 10) (< x 500))
                                                         (and (> y 50) (< y 250)))) (make-sceneChH "num2"))
    ((and (string=? (sceneChH-currentScene c) "num2") (and (mouse=? me "button-down")
                                                         (and (> x 10) (< x 500))
                                                         (and (> y 50) (< y 250)))) (make-sceneChH "num3"))
    ((and (string=? (sceneChH-currentScene c) "num3") (and (mouse=? me "button-down")
                                                         (and (> x 10) (< x 500))
                                                         (and (> y 50) (< y 250)))) (make-sceneChH "num4"))
    ((and (string=? (sceneChH-currentScene c) "m2") (mouse=? me "button-down"))
                                                        (make-sceneChH "m3"))
    ((and (string=? (sceneChH-currentScene c) "m3")
           (mouse=? me "button-down"))
     (make-sceneChH "m4"))

    (else c)))

(define (main c)
  (big-bang c
  [on-draw sceneChanger]
  [on-mouse click]))

(main (make-sceneChH "story1"))

    
                                                                                   
  
                          



  
   

