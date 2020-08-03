;; set paths
(when (< emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

(defun emacs-dir (path)
  (expand-file-name (concat user-emacs-directory path)))

;; straight.el setting by myself
(let ((bootstrap-file (concat user-emacs-directory "straight/repos/straight.el/bootstrap.el"))
      (bootstrap-version 3))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use-package
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; load modules
(use-package init-loader
  :init
  ;; Display error logs only when errors occur
  (custom-set-variables
    '(init-loader-show-log-after-init 'error-only))
  :config
  (init-loader-load (emacs-dir "conf")))
