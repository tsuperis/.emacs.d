(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (emacs-dir path)))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp")

(setq custom-file (locate-user-emacs-file "custom.el"))

(setq inhibit-splash-screen t)

(if window-system
    (global-unset-key (kbd "C-x C-c")))
(defalias 'exit 'kill-emacs)
