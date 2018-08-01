(defun ackermann (m n)
  (cond ((zerop m) (1+ n))
        ((zerop n) (ackermann (1- m) 1))
        (t         (ackermann (1- m) (ackermann m (1- n))))))

(defun main ()
    (loop for m from 0 to 3 do
      (loop for n from 0 to 13 do
        (format t "~d~%" (ackermann m n)))))
