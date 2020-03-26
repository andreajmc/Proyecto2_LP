;Autor: Wendell Enamorado
(define (df lst)
    (if(= (length lst) 1)
    ()
    (begin
      
      (if(= (length lst) 2)
        (begin
        (display (* (car lst) (- (length lst) 1)))
        )
        (begin
          (display (* (car lst) (- (length lst) 1)))
          (if(= (length lst) 3)
            (display "x")
            (begin
            (display "x^")
            (display (- (length lst) 2))
            )
          )
          (display " + ")
        )  
      )
      
      (df (cdr lst)))))

(df (list 2 -2 5 10))