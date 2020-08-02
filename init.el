;; set paths
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

(defun emacs-dir (path)
  (expand-file-name (concat user-emacs-directory path)))

;; package install
(when (require 'package nil t)
  (setq package-archives
	'(("gnu" . "https://elpa.gnu.org/packages/")
	  ("melpa" . "https://melpa.org/packages/")
	  ("org" . "http://orgmode.org/elpa/")))
  (package-initialize)

  ;; install use-package
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

  (if (require 'use-package nil t)
      (progn
	(set-variable 'use-package-verbose t)
	(set-variable 'use-package-always-ensure t))
    (message "Use-package is unavailable!")
    (defmacro use-package (&rest args)))

  ;; load modules
  (use-package init-loader
    :config
    (init-loader-load (emacs-dir "conf"))))
