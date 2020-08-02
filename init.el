;; set paths
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

(defun emacs-dir (path)
  (expand-file-name (concat user-emacs-directory path)))

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (emacs-dir path)))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos")

(setq custom-file (locate-user-emacs-file "custom.el"))

;; package install
(when (require 'package nil t)
  (setq package-archives
	'(("gnu" . "https://elpa.gnu.org/packages/")
	  ("melpa" . "https://melpa.org/packages/")
	  ("org" . "http://orgmode.org/elpa/")))
  (package-initialize)

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

(load-theme 'manoj-dark t)
(setq visible-bell t)
