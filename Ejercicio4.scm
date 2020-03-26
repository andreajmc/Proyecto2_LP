(define (df x)
 (if(zero? (length (x)))
  (display("done"))
  ((display(* (car x) (length (x)))) (df(cdr x)))
  )
)

(df(list 1,2,3))