(defun word-possible-p (word blocks)
  (cond
    ((= (length word) 0) t)
    ((null blocks) nil)
    (t (let*
         ((c (aref word 0))
          (bs (remove-if-not #'(lambda (b)
                                 (find c b :test #'char-equal))
                             blocks)))
         (some #'identity
               (loop for b in bs
                     collect (word-possible-p
                               (subseq word 1)
                               (remove b blocks))))))))

(defun main ()
	(loop for word in (list "A" "BARK" "BoOK" "TrEAT" "COmMoN" "SQUAD" "conFUsE")
		do (format t "~a => ~s~%" word (word-possible-p word (list "BO" "XK" "DQ" "CP" "NA" "GT" "RE" "TG" "QD" "FS" "JW" "HU" "VI" "AN" "OB" "ER" "FS" "LY" "PC" "ZM"))))

	(loop for word in (list "AB")
		do (format t "~a => ~s~%" word (word-possible-p word (list "AB" "AC")))))
