; chapter2 exercises
; 1.
; (a)
;; i. numbers are evaluated in the inner lists from left to right and they are passed to the operators of each:
(+ 4 10)

;; ii. outermost function is passed them:
14

; (b)
;; i.
(list 1 5)
;; ii.
(1 5)

; (c)
;; i. second element is evaluated. it returned nil:
NIL
;; ii. so third element is not evaluated and the fourth element is evaluated:
7

;(d)
;; i.
(list (and nil t) (+ 1 2))
;; ii.
(list nil (+ 1 2))
;; iii.
(list nil 3)
;; iv.
(nil 3)

; 2.
; (a)
(cons 'a (cons 'b (cons 'c nil))))

; (b)
(cons 'a (cons 'b '(c)))

; (c)
(cons 'a '(b c))

; 3.
(defun fourth (lst)
  (car (cdr (cdr (cdr lst)))))

; 4.
(defun greater (a b)
  (if (> a b) a b))

; 5.
; (a) enigma returns true, t, if the argument, the list x, has an empty list in it. an empty list is written as () or nil.
; (b)

; 6.
; (a) car
; note: (print error) the expression after of outermost car needs a quote
; (b) or
; (c) apply

; 7.
(defun nested-listp (lst)
  (if (null lst)
      nil
    (if (listp (car lst))
	t
      (nested-listp (cdr lst)))))

; alternate
(defun nested-listp1 (lst)
  (and (not (null lst))
       (or (listp (car lst))
	   (nestedp1 (cdr lst)))))

; 8
; (a)
; recursive
(defun dots (n)
  (if (= n 0)
      nil
    (progn
      (format t ".")
      (dots (- n 1))))))

;iterative
(defun dots1 (n)
  (do ((i 0 (+ i 1)))
      ((= i n))
      (format t ".")))

; alternate
(defun dots11 (n)
  (do ((i n (- i 1)))
      ((= i 0))
      (format t ".")))

; etc.

; (b)
; iterative
(defun occurence-times-a-it (lst)
  (let ((n 0))
    (dolist (obj lst)
      (if (eql obj 'a)
	  (setf n (+ n 1))))
    n))
; warning (+ n 1) instead of (setf n (+ n 1)) does not work since operator + does not modify variable n, only returns a value

; recursive
(defun occurence-times-a (lst)
  (if (null lst)
      0
    (if (eql (car lst) 'a)
	(+ 1 (occurence-times-a (cdr lst)))
      (occurence-times-a (cdr lst)))))

; alternative general
(defun occurence-times (lst obj)
  (if (null lst)
      0
    (if (eql (car lst) obj)
	(+ 1 (occurence-times (cdr lst) obj))
      (occurence-times (cdr lst) obj))))

;alternative general; excellent one from Shido's Home Page (http://www.shido.info/lisp/pacl2_e.html#hello). I have generalized it.
(defun occurence-times1 (ls obj) 
  (if ls
      (+ (if (eq (car ls) obj) 1 0) (occurence-times1 (cdr ls) obj))
    0))

					; 9
; coming soon
