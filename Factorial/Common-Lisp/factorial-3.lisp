(defun factorial (n)
    (reduce #'* (loop for i from 1 to n collect i)))

(defun main ()

  (format t "~D" (factorial 15)))
