;Autor: Wendell Enamorado
(define (df lst)
    (if(= (length lst) 1)
    (begin
      (display (* (car lst) (length lst)))
      )
    (begin
      (display (* (car lst) (length lst)))
      (display "x^")
      (display (- (length lst) 1))
      (display "")
      (display " + ")
      (df (cdr lst)))))

(df (list 9 8 7))