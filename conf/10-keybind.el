(defun backward-kill-line ()
  "Kill chars backward until encountering the end of a line."
  (interactive "p")
  (kill-line 0))

;; I am Takeru Furuse

(bind-key* "C-?" 'help-command)
(bind-key* "C-h" 'delete-backward-char)
(bind-key* "C-t" 'other-window)
(bind-key* "C-c l" 'toggle-truncate-lines)
(bind-key* "C-S-k" 'backword-kill-line)
