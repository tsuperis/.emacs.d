;; show line and column number: (X, Y)
(column-number-mode t)

;; count in region
(defun count-lines-and-chars ()
  (if mark-active
      (format "(L%d,C%d) "
	      (count-lines (region-beginning) (region-end))
	      (- (region-end) (region-beginning)))
    ""))

(add-to-list 'mode-line-format
	     '(:eval (count-lines-and-chars)))
