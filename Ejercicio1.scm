(define x (list 7 2 3 1 5 7))

 (define enteros?
    (lambda (x)
     (if (null? x)
        1
        (if (integer? (car x))
            (enteros?(cdr x))
            "No se puede hacer las operaciones deseadas porque no todos son enteros"))))


 (define suma (lambda(x y) (+ x y)))

(define obtener_elemento 
  (lambda (n lista)
    (letrec(
    (devolver_n (lambda (cont n lista)
    (if (null? lista)
      "null"
      (if (= n cont)
        (car lista)
        (devolver_n (+ cont 1) n (cdr lista))
        )))))(devolver_n 1 n lista))))




(define (reverse1 l)
  (if (null? l)
     ()
     (append (reverse1 (cdr l)) (list (car l)))
  )
)

(define ejercicio1 
  (lambda(x)
    (if ( = 1 (enteros? x) )
      (define y (reverse1 (list-sort x)))
      )
      (suma (obtener_elemento 1 y) (obtener_elemento 2 y) )))

(ejercicio1 x)