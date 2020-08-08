(use-package eldoc
  :hook (emacs-lisp-mode . turn-on-eldoc-mode)
  :custom
  (eldoc-idle-delay 0.1)
  (eldoc-echo-area-use-multiline-p t))
