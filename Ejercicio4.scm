;Autor: Wendell Enamorado
(define (df lst n)
    (if(zero? n)
    (begin
      (display "done")
      (car lst))
    (begin
      (display (* (car lst) (length lst)))
      (display "x^")
      (display (- (length lst) 1))
      (df (cdr lst) (- n 1)))))

(df (list 9 8 7) 2)